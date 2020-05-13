version 1.0

task GenomedataLoadDataOPTION...TRACKNAME {
  input {
    String? genomeGenomeDataFile
    String? trackTrackName
  }
  command <<<
    genomedata-load-data OPTION... TRACKNAME \
      ~{genomeGenomeDataFile} \
      ~{trackTrackName}
  >>>
}