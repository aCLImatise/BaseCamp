version 1.0

task HyphySa {
  input {
    String? toTo
    String? elseElse
    String? toTo
    String? elseElse
  }
  command <<<
    hyphy sa \
      ~{toTo} \
      ~{elseElse} \
      ~{toTo} \
      ~{elseElse}
  >>>
}