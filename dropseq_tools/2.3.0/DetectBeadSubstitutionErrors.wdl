version 1.0

task DetectBeadSubstitutionErrors {
  input {
    String mM
    String vV
  }
  command <<<
    DetectBeadSubstitutionErrors \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}