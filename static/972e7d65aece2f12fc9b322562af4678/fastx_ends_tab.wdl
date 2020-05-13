version 1.0

task FastxEndsTab.py {
  input {
    String iI
    String nN
    String? inputInputFastX
    String? outputOutputTsv
  }
  command <<<
    fastx_ends_tab.py \
      ~{inputInputFastX} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{outputOutputTsv}
  >>>
}