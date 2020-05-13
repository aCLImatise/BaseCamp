version 1.0

task ReduceGtf {
  input {
    String mM
    String vV
  }
  command <<<
    ReduceGtf \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}