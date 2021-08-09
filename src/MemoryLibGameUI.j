library MemoryLibGameUI requires MemoryLibBase, MemoryLibPrimitiveType

    struct GameUI extends Ptr
        public static method getInstance takes nothing returns thistype
            return PtrPtr[pGameDll + 0xD0F600]
        endmethod

        public method operator cursorFrame takes nothing returns Ptr
            return PtrPtr[this + 0x16C]
        endmethod

        public method operator worldFrame takes nothing returns Ptr
            return PtrPtr[this + 0x3BC]
        endmethod

        public method operator currentMode takes nothing returns Ptr
            return PtrPtr[this + 0x1B4]
        endmethod
        public method operator targetMode takes nothing returns Ptr
            return PtrPtr[this + 0x210]
        endmethod
        public method operator selectMode takes nothing returns Ptr
            return PtrPtr[this + 0x214]
        endmethod
        public method operator dragSelectMode takes nothing returns Ptr
            return PtrPtr[this + 0x218]
        endmethod
        public method operator dragScrollMode takes nothing returns Ptr
            return PtrPtr[this + 0x21C]
        endmethod
        public method operator buildMode takes nothing returns Ptr
            return PtrPtr[this + 0x220]
        endmethod
        public method operator signalMode takes nothing returns Ptr
            return PtrPtr[this + 0x224]
        endmethod
        public method operator escMenu takes nothing returns Ptr
            return PtrPtr[this + 0x228]
        endmethod
    endstruct

endlibrary
