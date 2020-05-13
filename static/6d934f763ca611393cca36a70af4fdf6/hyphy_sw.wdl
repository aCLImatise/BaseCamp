version 1.0

task HyphySw {
  input {
    String? toTo
    String? elseElse
    String? toTo
    String? elseElse
  }
  command <<<
    hyphy sw \
      ~{toTo} \
      ~{elseElse} \
      ~{toTo} \
      ~{elseElse}
  >>>
}