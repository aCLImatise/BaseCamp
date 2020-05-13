version 1.0

task AdVNTRFiltering {
  input {
    String? sequencesSequencesFa
    String? keywordsKeywordsTxt
    String? outputOutputTxt
  }
  command <<<
    adVNTR-Filtering \
      ~{sequencesSequencesFa} \
      ~{keywordsKeywordsTxt} \
      ~{outputOutputTxt}
  >>>
}