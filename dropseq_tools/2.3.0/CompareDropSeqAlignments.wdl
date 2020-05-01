version 1.0

task CompareDropSeqAlignments {
  input {
    String mM
    String vV
  }
  command <<<
    CompareDropSeqAlignments \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}