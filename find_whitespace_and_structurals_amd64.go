//+build !noasm
//+build !appengine

package simdjson

import (
	"unsafe"
)

//go:noescape
func _find_whitespace_and_structurals(input_lo, input_hi, whitespace, structurals unsafe.Pointer) (quote_mask uint64)

func find_whitespace_and_structurals(buf []byte, whitespace, structurals *uint64) {
	_find_whitespace_and_structurals(unsafe.Pointer(&buf[0]), unsafe.Pointer(&buf[32]), unsafe.Pointer(whitespace), unsafe.Pointer(structurals))
}
