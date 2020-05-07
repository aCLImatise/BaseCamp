version 1.0

task GenomedataQueryBegin {
  input {
    String? gdGdArchive
    String? trackTrackName
    String? chromChrom
    String? beginBegin
    String? endEnd
  }
  command <<<
    genomedata-query begin \
      ~{gdGdArchive} \
      ~{trackTrackName} \
      ~{chromChrom} \
      ~{beginBegin} \
      ~{endEnd}
  >>>
}