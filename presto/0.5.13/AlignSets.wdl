version 1.0

task AlignSets.pyTable {
  input {
    String outdirOutdir
    String outOutName
    Boolean failedFailed
    String delimDelim
    String pP
    String oO
    Boolean reverseReverse
    String execExec
  }
  command <<<
    AlignSets.py table \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(execExec) then ("--exec " +  '"' + execExec + '"') else ""}
  >>>
}