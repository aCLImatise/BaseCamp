version 1.0

task TagBamWithReadSequenceExtended {
  input {
    String mM
    String vV
  }
  command <<<
    TagBamWithReadSequenceExtended \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}