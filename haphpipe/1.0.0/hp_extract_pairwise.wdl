version 1.0

task HpExtractPairwise {
  input {
    String alignAlignJson
    String outfileOutfile
    String outOutFmt
    String refRefReg
    Boolean debugDebug
  }
  command <<<
    hp_extract_pairwise \
      ~{if defined(alignAlignJson) then ("--align_json " +  '"' + alignAlignJson + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outOutFmt) then ("--outfmt " +  '"' + outOutFmt + '"') else ""} \
      ~{if defined(refRefReg) then ("--refreg " +  '"' + refRefReg + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}