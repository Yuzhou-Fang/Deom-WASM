(module
  (import "console" "log" (func $log (param i32)))
  (func (export "add") (param $x i32) (param $y i32) (result i32)
    ;;  A local variable to store the add result
    (local $result i32)

    ;; Push two variables into stack
    local.get $x
    local.get $y

    ;; call add function and obtain the return value on the top of stack
    i32.add

    ;; Move the value of `add` to `$result`
    local.set $result

    ;; display the result in the console
    local.get $result
    call $log

    ;; Push value to stack for return
    local.get $result))