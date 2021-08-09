//! import "JNMemory.j"

library MemoryLib requires /*
    */ MemoryLibBase, /*
    */ MemoryLibGameUI, /*
    */ MemoryLibPrimitiveType, /*
    */ MemoryLibEnd
endlibrary

library MemoryLibBase initializer Init requires JNMemory
    globals
        integer pGameDll
    endglobals

    interface Ptr
    endinterface

    private function Init takes nothing returns nothing
        set pGameDll = JNGetModuleHandle("Game.dll")
    endfunction
endlibrary

library MemoryLibEnd
endlibrary
