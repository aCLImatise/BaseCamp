version 1.0

task Falcodiff {
  input {
    Boolean outdirOutdir
    Boolean skipSkipText
    Boolean skipSkipHtml
    Boolean skipSkipShortSummary
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? fastFastQcData1txt
    String? fastFastQcData2txt
  }
  command <<<
    falcodiff \
      ~{optionsOptions} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--skip-text" false="" skipSkipText} \
      ~{true="--skip-html" false="" skipSkipHtml} \
      ~{true="--skip-short-summary" false="" skipSkipShortSummary} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{fastFastQcData1txt} \
      ~{fastFastQcData2txt}
  >>>
}