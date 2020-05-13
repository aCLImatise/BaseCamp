version 1.0

task BigBedSummary {
  input {
    Boolean udcUdcDir
    File? fileFileBb
    String? chromChrom
    String? startStart
    String? endEnd
    String? dataDataPoints
  }
  command <<<
    bigBedSummary \
      ~{fileFileBb} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd} \
      ~{dataDataPoints}
  >>>
}