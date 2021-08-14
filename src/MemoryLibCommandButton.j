//! import "DzAPIFrameHandle.j"

library MemoryLibCommandButton requires MemoryLibBase, MemoryLibPrimitiveType, MemoryLibCommandButtonData, DzAPIFrameHandle

    struct CommandButton extends Ptr
        public static method getCommandBarButton takes integer x, integer y returns thistype
            return JNFrameGetCommandBarButton(x, y)
        endmethod

        public method operator data takes nothing returns CommandButtonData
            return PtrPtr[this + 0x190]
        endmethod
    endstruct

endlibrary
