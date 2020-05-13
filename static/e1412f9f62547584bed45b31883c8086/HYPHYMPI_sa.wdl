version 1.0

task HYPHYMPISa {
  input {
    String? toTo
    String? elseElse
    String? toTo
    String? elseElse
  }
  command <<<
    HYPHYMPI sa \
      ~{toTo} \
      ~{elseElse} \
      ~{toTo} \
      ~{elseElse}
  >>>
}