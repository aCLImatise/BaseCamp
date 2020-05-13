version 1.0

task AssemblePairs.pySequential {
  input {
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    Boolean fastFastA
    String delimDelim
    String nprocNproc
    String alphaAlpha
    Int maxMaxError
    Int minMinLen
    Int maxlenMaxlen
    Boolean scanScanRev
    String rR
    Int miniMiniDent
    String evalueEvalue
    Int maxMaxHits
    Boolean fillFill
    String alignerAligner
    String execExec
    String dbDbExec
  }
  command <<<
    AssemblePairs.py sequential \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(maxMaxError) then ("--maxerror " +  '"' + maxMaxError + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxlenMaxlen) then ("--maxlen " +  '"' + maxlenMaxlen + '"') else ""} \
      ~{true="--scanrev" false="" scanScanRev} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(miniMiniDent) then ("--minident " +  '"' + miniMiniDent + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(maxMaxHits) then ("--maxhits " +  '"' + maxMaxHits + '"') else ""} \
      ~{true="--fill" false="" fillFill} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(execExec) then ("--exec " +  '"' + execExec + '"') else ""} \
      ~{if defined(dbDbExec) then ("--dbexec " +  '"' + dbDbExec + '"') else ""}
  >>>
}