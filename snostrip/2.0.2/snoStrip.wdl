version 1.0

task SnoStrip.pl {
  input {
    Boolean dD
    Boolean kK
    Boolean gG
    Boolean nN
    Boolean cC
    Boolean jJ
    Boolean qQ
    Boolean fF
    Boolean sS
    Boolean aA
    Boolean pP
  }
  command <<<
    snoStrip.pl \
      ~{true="-d" false="" dD} \
      ~{true="-k" false="" kK} \
      ~{true="-g" false="" gG} \
      ~{true="-n" false="" nN} \
      ~{true="-c" false="" cC} \
      ~{true="-j" false="" jJ} \
      ~{true="-q" false="" qQ} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-a" false="" aA} \
      ~{true="-p" false="" pP}
  >>>
}