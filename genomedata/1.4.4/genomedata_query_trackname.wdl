version 1.0

task GenomedataQueryTrackname {
  input {
    String? gdGdArchive
    String? trackTrackName
    String? chromChrom
    String? beginBegin
    String? endEnd
  }
  command <<<
    genomedata-query trackname \
      ~{gdGdArchive} \
      ~{trackTrackName} \
      ~{chromChrom} \
      ~{beginBegin} \
      ~{endEnd}
  >>>
}