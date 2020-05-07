version 1.0

task GenomedataQueryChrom {
  input {
    String? gdGdArchive
    String? trackTrackName
    String? chromChrom
    String? beginBegin
    String? endEnd
  }
  command <<<
    genomedata-query chrom \
      ~{gdGdArchive} \
      ~{trackTrackName} \
      ~{chromChrom} \
      ~{beginBegin} \
      ~{endEnd}
  >>>
}