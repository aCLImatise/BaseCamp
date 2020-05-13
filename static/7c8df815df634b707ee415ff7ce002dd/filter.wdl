version 1.0

task Filter {
  input {
    Boolean noNoHeader
  }
  command <<<
    filter \
      ~{true="--no-header" false="" noNoHeader}
  >>>
}