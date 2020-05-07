version 1.0

task GenomedataQueryEnd {
  input {
    String? gdGdArchive
    String? trackTrackName
    String? chromChrom
    String? beginBegin
    String? endEnd
  }
  command <<<
    genomedata-query end \
      ~{gdGdArchive} \
      ~{trackTrackName} \
      ~{chromChrom} \
      ~{beginBegin} \
      ~{endEnd}
  >>>
}