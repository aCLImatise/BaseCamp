version 1.0

task FastxLengthTab.pyOutputTsv {
  input {
    String iI
    String? inputInputFastX
    String? outputOutputTsv
  }
  command <<<
    fastx_length_tab.py output_tsv \
      ~{inputInputFastX} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{outputOutputTsv}
  >>>
}