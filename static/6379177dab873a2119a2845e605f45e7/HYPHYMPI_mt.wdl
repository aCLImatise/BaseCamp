version 1.0

task HYPHYMPIMt {
  input {
    String? toTo
    String? elseElse
    String? toTo
    String? elseElse
  }
  command <<<
    HYPHYMPI mt \
      ~{toTo} \
      ~{elseElse} \
      ~{toTo} \
      ~{elseElse}
  >>>
}