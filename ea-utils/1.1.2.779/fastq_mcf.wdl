version 1.0

task FastqMcf {
  input {
    Boolean uU
    String pP
    Boolean rR
    Boolean nN
    Boolean kK
    Boolean sS
    String cC
    Boolean dD
    Boolean cycleCycleAdjust
    Boolean phredPhredAdjust
    Boolean phredPhredAdjustMax
    Boolean homopolymerHomopolymerPct
    Boolean lowLowComplexPct
    Boolean keepKeepClipped
    Boolean maxMaxOutputReads
  }
  command <<<
    fastq-mcf \
      ~{true="-U" false="" uU} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{true="-n" false="" nN} \
      ~{true="-K" false="" kK} \
      ~{true="-S" false="" sS} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="--cycle-adjust" false="" cycleCycleAdjust} \
      ~{true="--phred-adjust" false="" phredPhredAdjust} \
      ~{true="--phred-adjust-max" false="" phredPhredAdjustMax} \
      ~{true="--homopolymer-pct" false="" homopolymerHomopolymerPct} \
      ~{true="--lowcomplex-pct" false="" lowLowComplexPct} \
      ~{true="--keep-clipped" false="" keepKeepClipped} \
      ~{true="--max-output-reads" false="" maxMaxOutputReads}
  >>>
}