version 1.0

task FilterGtf {
  input {
    String mM
    String vV
  }
  command <<<
    FilterGtf \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}