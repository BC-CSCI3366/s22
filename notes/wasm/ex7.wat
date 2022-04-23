(module
 (export "main" (func $main))
 (func $test (param $0 i32) (result i32)
    (block
     (block
       (br 1)
       (i32.const 1)
       (set_local $0)
     )
     i32.const 5
     set_local $0
    )
   (get_local $0)
 )
 (func $main (result i32)
  (i32.const 10)
  (call $test)
 )
)
