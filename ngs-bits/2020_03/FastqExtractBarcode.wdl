version 1.0

task FastqExtractBarcode {
  input {
    File inIn
    String outOutMain
    Int cutCut
    String outOutIndex
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqExtractBarcode \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOutMain) then ("-out_main " +  '"' + outOutMain + '"') else ""} \
      ~{if defined(cutCut) then ("-cut " +  '"' + cutCut + '"') else ""} \
      ~{if defined(outOutIndex) then ("-out_index " +  '"' + outOutIndex + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}