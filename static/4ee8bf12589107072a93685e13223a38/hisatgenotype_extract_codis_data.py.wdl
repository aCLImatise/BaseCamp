version 1.0

task HisatgenotypeExtractCodisData.py.bak {
  input {
    String baseBase
    String locusLocusList
    Boolean verboseVerbose
  }
  command <<<
    hisatgenotype_extract_codis_data.py.bak \
      ~{if defined(baseBase) then ("--base " +  '"' + baseBase + '"') else ""} \
      ~{if defined(locusLocusList) then ("--locus-list " +  '"' + locusLocusList + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}