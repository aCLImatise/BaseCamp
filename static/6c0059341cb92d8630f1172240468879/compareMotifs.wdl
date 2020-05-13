version 1.0

task CompareMotifs.pl {
  input {
    Boolean statStat
    Boolean bitsBits
    Boolean rnaRna
    Boolean norevNorevOpp
    String reducedReducedMotifs
    String matrixMatrix
    Boolean noNoFacts
    Boolean dbviewDbview
    String dbDbTable
    Boolean cpuCpu
    Boolean basicBasic
    Boolean seqSeqLogo
  }
  command <<<
    compareMotifs.pl \
      ~{true="-stat" false="" statStat} \
      ~{true="-bits" false="" bitsBits} \
      ~{true="-rna" false="" rnaRna} \
      ~{true="-norevopp" false="" norevNorevOpp} \
      ~{if defined(reducedReducedMotifs) then ("-reducedMotifs " +  '"' + reducedReducedMotifs + '"') else ""} \
      ~{if defined(matrixMatrix) then ("-matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{true="-nofacts" false="" noNoFacts} \
      ~{true="-dbview" false="" dbviewDbview} \
      ~{if defined(dbDbTable) then ("-dbTable " +  '"' + dbDbTable + '"') else ""} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-basic" false="" basicBasic} \
      ~{true="-seqlogo" false="" seqSeqLogo}
  >>>
}