version 1.0

task SpliceSiteSummary.pl {
  input {
    Boolean aA
    Boolean sS
    Boolean fF
    Boolean cC
    Boolean bB
    Boolean nN
    Boolean iI
    Boolean rR
    Boolean wW
    Boolean oO
    Boolean pP
    Boolean manMan
  }
  command <<<
    splice_site_summary.pl \
      ~{true="-a" false="" aA} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-c" false="" cC} \
      ~{true="-b" false="" bB} \
      ~{true="-n" false="" nN} \
      ~{true="-i" false="" iI} \
      ~{true="-r" false="" rR} \
      ~{true="-w" false="" wW} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="--man" false="" manMan}
  >>>
}