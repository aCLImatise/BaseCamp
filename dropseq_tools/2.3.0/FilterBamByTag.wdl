version 1.0

task FilterBamByTag {
  input {
    String mM
    String vV
  }
  command <<<
    FilterBamByTag \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}