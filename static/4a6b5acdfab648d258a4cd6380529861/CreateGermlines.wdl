version 1.0

task CreateGermlines.py {
  input {
    Array[String]+ dD
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    String formatFormat
    Boolean clonedCloned
    String sfSf
    String vfVf
    String dfDf
    String jfJf
    String? germGermPass
    String? germGermFail
  }
  command <<<
    CreateGermlines.py \
      ~{germGermPass} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--cloned" false="" clonedCloned} \
      ~{if defined(sfSf) then ("--sf " +  '"' + sfSf + '"') else ""} \
      ~{if defined(vfVf) then ("--vf " +  '"' + vfVf + '"') else ""} \
      ~{if defined(dfDf) then ("--df " +  '"' + dfDf + '"') else ""} \
      ~{if defined(jfJf) then ("--jf " +  '"' + jfJf + '"') else ""} \
      ~{germGermFail}
  >>>
}