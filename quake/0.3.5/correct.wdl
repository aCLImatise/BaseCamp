version 1.0

task Correct {
  input {
    Boolean uU
    Boolean headersHeaders
    Boolean logLog
  }
  command <<<
    correct \
      ~{true="-u" false="" uU} \
      ~{true="--headers" false="" headersHeaders} \
      ~{true="--log" false="" logLog}
  >>>
}