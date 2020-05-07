version 1.0

task NanoFilt {
  input {
    String logLogFile
    Int lengthLength
    Int maxlengthMaxlength
    String qualityQuality
    Int mingMingC
    Int maxMaxGc
    String headHeadCrop
    String tailTailCrop
    String summarySummary
    Boolean readReadType
    String? inputInput
  }
  command <<<
    NanoFilt \
      ~{inputInput} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{if defined(mingMingC) then ("--minGC " +  '"' + mingMingC + '"') else ""} \
      ~{if defined(maxMaxGc) then ("--maxGC " +  '"' + maxMaxGc + '"') else ""} \
      ~{if defined(headHeadCrop) then ("--headcrop " +  '"' + headHeadCrop + '"') else ""} \
      ~{if defined(tailTailCrop) then ("--tailcrop " +  '"' + tailTailCrop + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{true="--readtype" false="" readReadType}
  >>>
}