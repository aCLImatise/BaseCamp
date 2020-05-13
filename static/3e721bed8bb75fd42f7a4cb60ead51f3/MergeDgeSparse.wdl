version 1.0

task MergeDgeSparse {
  input {
    String mM
    String vV
  }
  command <<<
    MergeDgeSparse \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}