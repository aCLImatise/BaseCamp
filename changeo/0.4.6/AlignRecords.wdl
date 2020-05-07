version 1.0

task AlignRecords.pyBlock {
  input {
    Array[String]+ dD
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    String formatFormat
    String nprocNproc
    Array[String]+ sfSf
    Array[String]+ gfGf
    String callsCalls
    String modeMode
    String actAct
    String execExec
  }
  command <<<
    AlignRecords.py block \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(sfSf) then ("--sf " +  '"' + sfSf + '"') else ""} \
      ~{if defined(gfGf) then ("--gf " +  '"' + gfGf + '"') else ""} \
      ~{if defined(callsCalls) then ("--calls " +  '"' + callsCalls + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(actAct) then ("--act " +  '"' + actAct + '"') else ""} \
      ~{if defined(execExec) then ("--exec " +  '"' + execExec + '"') else ""}
  >>>
}