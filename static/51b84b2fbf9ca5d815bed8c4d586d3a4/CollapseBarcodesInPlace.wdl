version 1.0

task CollapseBarcodesInPlace {
  input {
    String mM
    String vV
  }
  command <<<
    CollapseBarcodesInPlace \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}