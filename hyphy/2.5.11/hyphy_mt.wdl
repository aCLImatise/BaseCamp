version 1.0

task HyphyMt {
  input {
    String? toTo
    String? elseElse
    String? toTo
    String? elseElse
  }
  command <<<
    hyphy mt \
      ~{toTo} \
      ~{elseElse} \
      ~{toTo} \
      ~{elseElse}
  >>>
}