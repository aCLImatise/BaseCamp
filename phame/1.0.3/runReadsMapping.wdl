version 1.0

task RunReadsMapping.pl {
  input {
    Boolean rR
    Boolean qQ
    Boolean dD
    Boolean tT
    Boolean lL
    Boolean aA
  }
  command <<<
    runReadsMapping.pl \
      ~{true="-r" false="" rR} \
      ~{true="-q" false="" qQ} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="-a" false="" aA}
  >>>
}