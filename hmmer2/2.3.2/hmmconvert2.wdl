version 1.0

task Hmmconvert2 {
  input {
    Boolean aA
    Boolean bB
    Boolean pP
    Boolean pP
    Boolean aA
    Boolean fF
  }
  command <<<
    hmmconvert2 \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{true="-A" false="" aA} \
      ~{true="-F" false="" fF}
  >>>
}