version 1.0

task GenomedataLoadDataGENOMEDATAFILE {
  input {
    String? optionOption
    String? genomeGenomeDataFile
    String? trackTrackName
  }
  command <<<
    genomedata-load-data GENOMEDATAFILE \
      ~{optionOption} \
      ~{genomeGenomeDataFile} \
      ~{trackTrackName}
  >>>
}