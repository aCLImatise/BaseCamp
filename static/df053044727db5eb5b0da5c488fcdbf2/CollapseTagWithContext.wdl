version 1.0

task CollapseTagWithContext {
  input {
    String mM
    String vV
  }
  command <<<
    CollapseTagWithContext \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}