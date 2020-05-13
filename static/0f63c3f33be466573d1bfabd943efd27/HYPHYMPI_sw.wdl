version 1.0

task HYPHYMPISw {
  input {
    String? toTo
    String? elseElse
  }
  command <<<
    HYPHYMPI sw \
      ~{toTo} \
      ~{elseElse}
  >>>
}