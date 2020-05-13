version 1.0

task ConvertToRefFlat {
  input {
    String mM
    String vV
  }
  command <<<
    ConvertToRefFlat \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}