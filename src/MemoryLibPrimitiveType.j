library MemoryLibPrimitiveType requires MemoryLibBase

    struct BytePtr extends Ptr
        public static method operator [] takes integer address returns integer
            return JNMemoryGetByte(address)
        endmethod

        public static method operator []= takes integer address, integer value returns nothing
            call JNMemorySetByte(address, value)
        endmethod

        public method operator value takes nothing returns integer
            return JNMemoryGetByte(this)
        endmethod

        public method operator value= takes integer value returns nothing
            call JNMemorySetByte(this, value)
        endmethod

        public method operator [] takes integer offset returns integer
            return JNMemoryGetInteger(this + offset)
        endmethod

        public method operator []= takes integer offset, integer value returns nothing
            call JNMemorySetByte(this + offset, value)
        endmethod
    endstruct

    struct IntPtr extends Ptr
        public static method operator [] takes integer address returns integer
            return JNMemoryGetInteger(address)
        endmethod

        public static method operator []= takes integer address, integer value returns nothing
            call JNMemorySetInteger(address, value)
        endmethod

        public method operator value takes nothing returns integer
            return JNMemoryGetInteger(this)
        endmethod

        public method operator value= takes integer value returns nothing
            call JNMemorySetInteger(this, value)
        endmethod

        public method operator [] takes integer offset returns integer
            return JNMemoryGetInteger(this + (offset * 4))
        endmethod

        public method operator []= takes integer offset, integer value returns nothing
            call JNMemorySetInteger(this + (offset * 4), value)
        endmethod
    endstruct

    struct RealPtr extends Ptr
        public static method operator [] takes integer address returns real
            return JNMemoryGetReal(address)
        endmethod

        public static method operator []= takes integer address, real value returns nothing
            call JNMemorySetReal(address, value)
        endmethod

        public method operator value takes nothing returns real
            return JNMemoryGetReal(this)
        endmethod

        public method operator value= takes real value returns nothing
            call JNMemorySetReal(this, value)
        endmethod

        public method operator [] takes integer offset returns real
            return JNMemoryGetReal(this + (offset * 4))
        endmethod

        public method operator []= takes integer offset, real value returns nothing
            call JNMemorySetReal(this + (offset * 4), value)
        endmethod
    endstruct

    struct PtrPtr extends Ptr
        public static method operator [] takes integer address returns Ptr
            return JNMemoryGetInteger(address)
        endmethod

        public static method operator []= takes integer address, integer value returns nothing
            call JNMemorySetInteger(address, value)
        endmethod

        public method operator value takes nothing returns Ptr
            return JNMemoryGetInteger(this)
        endmethod

        public method operator value= takes Ptr value returns nothing
            call JNMemorySetInteger(this, value)
        endmethod

        public method operator [] takes integer offset returns Ptr
            return JNMemoryGetInteger(this + (offset * 4))
        endmethod

        public method operator []= takes integer offset, Ptr value returns nothing
            call JNMemorySetInteger(this + (offset * 4), value)
        endmethod
    endstruct

endlibrary
