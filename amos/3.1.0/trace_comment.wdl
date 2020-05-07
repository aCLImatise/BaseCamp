version 1.0

task TraceComment {
  input {
    Boolean cC
  }
  command <<<
    trace_comment \
      ~{true="-c" false="" cC}
  >>>
}