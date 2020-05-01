version 1.0

task ValidateReference {
  input {
    String mM
    String vV
  }
  command <<<
    ValidateReference \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}