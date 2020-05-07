version 1.0

task Ca2mates {
  input {
    Boolean aA
  }
  command <<<
    ca2mates \
      ~{true="-a" false="" aA}
  >>>
}