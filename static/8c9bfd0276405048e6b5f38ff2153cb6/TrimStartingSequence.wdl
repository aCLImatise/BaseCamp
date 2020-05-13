version 1.0

task TrimStartingSequence {
  input {
    String mM
    String vV
  }
  command <<<
    TrimStartingSequence \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}