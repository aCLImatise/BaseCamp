version 1.0

task NwTrim {
  input {
    Boolean aA
  }
  command <<<
    nw_trim \
      ~{true="-a" false="" aA}
  >>>
}