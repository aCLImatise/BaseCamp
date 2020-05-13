version 1.0

task BamTagOfTagCounts {
  input {
    String mM
    String vV
  }
  command <<<
    BamTagOfTagCounts \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}