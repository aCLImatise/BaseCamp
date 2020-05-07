version 1.0

task FilterBam {
  input {
    String mM
    String vV
  }
  command <<<
    FilterBam \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}