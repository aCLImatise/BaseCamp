version 1.0

task PolyATrimmer {
  input {
    String mM
    String vV
  }
  command <<<
    PolyATrimmer \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}