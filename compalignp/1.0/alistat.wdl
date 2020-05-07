version 1.0

task Alistat {
  input {
    Boolean aA
    Boolean fF
    Boolean qQ
  }
  command <<<
    alistat \
      ~{true="-a" false="" aA} \
      ~{true="-f" false="" fF} \
      ~{true="-q" false="" qQ}
  >>>
}