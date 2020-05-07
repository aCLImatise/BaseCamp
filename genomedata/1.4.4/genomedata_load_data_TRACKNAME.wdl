version 1.0

task GenomedataLoadDataTRACKNAME {
  input {
    String? optionOption
    String? genomeGenomeDataFile
    String? trackTrackName
  }
  command <<<
    genomedata-load-data TRACKNAME \
      ~{optionOption} \
      ~{genomeGenomeDataFile} \
      ~{trackTrackName}
  >>>
}