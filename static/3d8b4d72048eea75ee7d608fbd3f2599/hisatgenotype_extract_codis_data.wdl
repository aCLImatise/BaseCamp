version 1.0

task HisatgenotypeExtractCodisData.py {
  input {
    String baseBase
    String locusLocusList
    Boolean verboseVerbose
  }
  command <<<
    hisatgenotype_extract_codis_data.py \
      ~{if defined(baseBase) then ("--base " +  '"' + baseBase + '"') else ""} \
      ~{if defined(locusLocusList) then ("--locus-list " +  '"' + locusLocusList + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}