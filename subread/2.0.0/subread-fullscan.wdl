version 1.0

task SubreadFullscan {
  input {
    String iI
    Float mM
    String? readReadString
  }
  command <<<
    subread-fullscan \
      ~{readReadString} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}