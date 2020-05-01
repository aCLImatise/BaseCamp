version 1.0

task BamTagHistogram {
  input {
    String mM
    String vV
  }
  command <<<
    BamTagHistogram \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}