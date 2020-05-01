version 1.0

task MaskReferenceSequence {
  input {
    String mM
    String vV
  }
  command <<<
    MaskReferenceSequence \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}