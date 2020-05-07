version 1.0

task BedtoolsMulticov {
  input {
    Boolean bamsBams
    Boolean bedBed
    Boolean splitSplit
    Boolean sS
    Boolean sS
    Boolean fF
    Boolean rR
    Boolean qQ
    Boolean dD
    Boolean fF
    Boolean pP
  }
  command <<<
    bedtools multicov \
      ~{true="-bams" false="" bamsBams} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-split" false="" splitSplit} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-q" false="" qQ} \
      ~{true="-D" false="" dD} \
      ~{true="-F" false="" fF} \
      ~{true="-p" false="" pP}
  >>>
}