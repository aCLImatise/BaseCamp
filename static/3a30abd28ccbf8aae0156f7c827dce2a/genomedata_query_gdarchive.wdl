version 1.0

task GenomedataQueryGdarchive {
  input {
    String? gdGdArchive
    String? trackTrackName
    String? chromChrom
    String? beginBegin
    String? endEnd
  }
  command <<<
    genomedata-query gdarchive \
      ~{gdGdArchive} \
      ~{trackTrackName} \
      ~{chromChrom} \
      ~{beginBegin} \
      ~{endEnd}
  >>>
}