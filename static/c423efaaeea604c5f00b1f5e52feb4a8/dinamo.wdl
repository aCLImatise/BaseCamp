version 1.0

task Dinamo {
  input {
    Boolean noNoLog
  }
  command <<<
    dinamo \
      ~{true="--no-log" false="" noNoLog}
  >>>
}