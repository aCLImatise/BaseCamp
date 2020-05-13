version 1.0

task CollapseSeq.py {
  input {
    Array[String]+ sS
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    Boolean fastFastA
    String delimDelim
    Boolean innerInner
    Boolean keepKeepMiss
    Int maxMaxF
    Int minfMinf
    String? collapseCollapseUnique
    String? collapseCollapseDuplicate
    String? collapseCollapseUndetermined
  }
  command <<<
    CollapseSeq.py \
      ~{collapseCollapseUnique} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{true="--inner" false="" innerInner} \
      ~{true="--keepmiss" false="" keepKeepMiss} \
      ~{if defined(maxMaxF) then ("--maxf " +  '"' + maxMaxF + '"') else ""} \
      ~{if defined(minfMinf) then ("--minf " +  '"' + minfMinf + '"') else ""} \
      ~{collapseCollapseDuplicate} \
      ~{collapseCollapseUndetermined}
  >>>
}