;;int fact(int n) {
;;   int i = 1;
;;   while (n != 0) {
;;     i = i * n;
;;     n -= 1;
;;  }
;;  return i
;;}


(module
 (export "main" (func $main))
 (func $fact (param $0 i32) (result i32)
   (local $1 i32)
   (i32.const 1)
   (set_local $1)

   (loop 
     (get_local $1)
     (get_local $0)
     (i32.mul)
     (set_local $1)

     (get_local $0)
     (i32.const 1)
     (i32.sub)
     (set_local $0)

     (get_local $0)
     (i32.const 0)
     (i32.ne)
     (br_if 0)
   )
   (get_local $1)
 )
 (func $main (result i32)
  (i32.const 5)
  (call $fact)
 )
)
