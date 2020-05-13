version 1.0

task MetileneOutput.pl {
  input {
    Boolean oO
    Boolean pP
    Boolean cC
    Boolean dD
    Boolean lL
    Boolean aA
    Boolean bB
  }
  command <<<
    metilene_output.pl \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB}
  >>>
}