//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

TEXT ·_finalize_structurals(SB), $0-48

    MOVQ structurals_in+0(FP), DI
    MOVQ whitespace+8(FP), SI
    MOVQ quote_mask+16(FP), DX
    MOVQ quote_bits+24(FP), CX
    MOVQ prev_iter_ends_pseudo_pred+32(FP), R8

    LONG $0xf2e8e2c4; BYTE $0xff // andn    rdi, rdx, rdi
    WORD $0x0948; BYTE $0xcf     // or    rdi, rcx
    WORD $0x8948; BYTE $0xf8     // mov    rax, rdi
    WORD $0x0948; BYTE $0xf0     // or    rax, rsi
    LONG $0x000c8d4c             // lea    r9, [rax + rax]
    WORD $0x0b4d; BYTE $0x08     // or    r9, qword [r8]
    LONG $0x3fe8c148             // shr    rax, 63
    WORD $0x8949; BYTE $0x00     // mov    qword [r8], rax
    WORD $0xf748; BYTE $0xd6     // not    rsi
    LONG $0xf2e8e2c4; BYTE $0xc6 // andn    rax, rdx, rsi
    WORD $0x214c; BYTE $0xc8     // and    rax, r9
    WORD $0x0948; BYTE $0xf8     // or    rax, rdi
    WORD $0xf748; BYTE $0xd1     // not    rcx
    WORD $0x0948; BYTE $0xd1     // or    rcx, rdx
    WORD $0x2148; BYTE $0xc8     // and    rax, rcx
    MOVQ AX, structurals+40(FP)
    RET
