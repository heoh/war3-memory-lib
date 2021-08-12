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
     * //! runtextmacro MemoryLib_DefineGlobalMemoryBlock("accessor", "name", "id", "size")
     * `size`바이트 크기의 전역 메모리 블록을 `name`이라는 이름으로 생성합니다.
     * `accessor`는 접근자이며, {"", "public", "private"} 중 하나만 사용 가능합니다.
     * `id` 값은 유일해야하며, 다른 블록과 겹치면 안됩니다.
     *
     * 메모리 블록은 전역으로 생성되며, 다음과 같은 형태로 참조할 수 있습니다:
     * $name.pHead: 메모리 블록 포인터
     * $name.size : 메모리 블록 크기 (바이트)
     */
    //! textmacro MemoryLib_DefineMemoryBlock takes ACCESSOR, NAME, ID, SIZE

    globals
        integer $ID$_block
        integer array l__$ID$_block
    endglobals

    $ACCESSOR$ struct $NAME$ extends array
        readonly static Ptr pHead
        readonly static integer size

        private static method initSize takes nothing returns nothing
            local integer lastIndex = ($SIZE$ - 1) / 4
            set l__$ID$_block[lastIndex] = 0
        endmethod

        private static method typecast takes nothing returns nothing
            local integer $ID$_block
        endmethod

        //# +nosemanticerror
        private static method onInit takes nothing returns nothing
            call thistype.initSize()
            set thistype.pHead = PtrPtr(l__$ID$_block)[3]
            set thistype.size = $SIZE$
        endmethod
    endstruct
    //! endtextmacro

endlibrary
