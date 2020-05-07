version 1.0

task TagReadWithInterval {
  input {
    String mM
    String vV
  }
  command <<<
    TagReadWithInterval \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}