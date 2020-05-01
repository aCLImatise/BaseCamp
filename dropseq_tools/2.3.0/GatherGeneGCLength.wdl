version 1.0

task GatherGeneGCLength {
  input {
    String mM
    String vV
  }
  command <<<
    GatherGeneGCLength \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}