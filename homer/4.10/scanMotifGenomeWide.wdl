version 1.0

task ScanMotifGenomeWide.pl {
  input {
    Boolean bedBed
    Boolean homeHomeR1
    Boolean homeHomeR2
    Boolean keepKeepAll
    Boolean maskMask
    Boolean pP
  }
  command <<<
    scanMotifGenomeWide.pl \
      ~{true="-bed" false="" bedBed} \
      ~{true="-homer1" false="" homeHomeR1} \
      ~{true="-homer2" false="" homeHomeR2} \
      ~{true="-keepAll" false="" keepKeepAll} \
      ~{true="-mask" false="" maskMask} \
      ~{true="-p" false="" pP}
  >>>
}