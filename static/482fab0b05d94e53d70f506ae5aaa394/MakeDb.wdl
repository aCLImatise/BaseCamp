version 1.0

task MakeDb.pyIhmm {
  input {
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    String formatFormat
    Boolean asAsIsId
    Boolean partialPartial
    Boolean extendedExtended
  }
  command <<<
    MakeDb.py ihmm \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--asis-id" false="" asAsIsId} \
      ~{true="--partial" false="" partialPartial} \
      ~{true="--extended" false="" extendedExtended}
  >>>
}