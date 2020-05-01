version 1.0

task BigWigSummary {
  input {
    Boolean udcUdcDir
    File? fileFileBigwig
    String? chromChrom
    String? startStart
    String? endEnd
    String? dataDataPoints
  }
  command <<<
    bigWigSummary \
      ~{fileFileBigwig} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd} \
      ~{dataDataPoints}
  >>>
}