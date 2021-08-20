library MemoryLibCommandButtonData requires MemoryLibBase, MemoryLibPrimitiveType

    struct CommandButtonData extends Ptr
        public method operator abilityId takes nothing returns integer
            return IntPtr[this + 0x4]
        endmethod
        public method operator orderId takes nothing returns integer
            return IntPtr[this + 0x8]
        endmethod
        public method operator targets takes nothing returns integer
            return IntPtr[this + 0x10]
        endmethod
        public method operator tip takes nothing returns string
            return JNMemoryGetString(this + 0x2C, 0)
        endmethod
        public method operator ubertip takes nothing returns string
            return JNMemoryGetString(this + 0x18C, 0)
        endmethod
        public method operator cost takes nothing returns integer
            return IntPtr[this + 0x594]
        endmethod
        public method operator buttonPosX takes nothing returns integer
            return IntPtr[this + 0x59C]
        endmethod
        public method operator buttonPosY takes nothing returns integer
            return IntPtr[this + 0x5A0]
        endmethod
        public method operator hotkey takes nothing returns integer
            return IntPtr[this + 0x5AC]
        endmethod
        public method operator art takes nothing returns string
            return JNMemoryGetString(this + 0x5C8, 0)
        endmethod
        public method operator state takes nothing returns integer
            return IntPtr[this + 0x6D0]
        endmethod
    endstruct

endlibrary
