(module
 (export "main" (func $main))
 (func $double (param $0 i32) (result i32)
  (get_local $0)
  (i32.const 2)
  (i32.mul)
 )
 (func $main (result i32)
  (i32.const 4)
  (call $double)
 )
)