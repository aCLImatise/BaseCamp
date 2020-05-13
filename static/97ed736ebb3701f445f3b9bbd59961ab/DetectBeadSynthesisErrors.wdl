version 1.0

task DetectBeadSynthesisErrors {
  input {
    String mM
    String vV
  }
  command <<<
    DetectBeadSynthesisErrors \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}