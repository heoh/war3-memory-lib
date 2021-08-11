/*
 * MemoryLibMemoryBlock
 * 빈 메모리 공간을 할당합니다.
 */
library MemoryLibMemoryBlock requires MemoryLibBase, MemoryLibPrimitiveType

    globals
        /* 최대 할당 크기 */
        constant integer MemoryLib_MAX_MEMORY_BLOCK_SIZE = JASS_MAX_ARRAY_SIZE * 4
    endglobals

    /*
     * //! runtextmacro MemoryLib_DefineGlobalMemoryBlock("name", "size")
     * `size`바이트 크기의 전역 메모리 블록을 `name`이라는 이름으로 생성합니다.
     * 메모리 블록은 전역으로 생성되며, 아래 변수로 참조할 수 있습니다:
     * ${name}_pHead: 메모리 블록 포인터
     * ${name}_size : 메모리 블록 크기 (바이트)
     */
    //! textmacro MemoryLib_DefineMemoryBlock takes NAME, SIZE
    scope $NAME$
        globals
            integer $NAME$_block  // Not used, it's here just to fool Jasshelper
            integer array l__$NAME$_block
            public Ptr pHead
            public integer size
        endglobals

        private struct InitArray
            private static method onInit takes nothing returns nothing
                local integer lastIndex = ($SIZE$ - 1) / 4
                set l__$NAME$_block[lastIndex] = 0
            endmethod
        endstruct

        private function Typecast takes nothing returns nothing
            local integer $NAME$_block
        endfunction

        private struct Init
            //# +nosemanticerror
            private static method onInit takes nothing returns nothing
                set pHead = PtrPtr(l__$NAME$_block)[3]
                set size = $SIZE$
            endmethod
        endstruct
    endscope
    //! endtextmacro

endlibrary
