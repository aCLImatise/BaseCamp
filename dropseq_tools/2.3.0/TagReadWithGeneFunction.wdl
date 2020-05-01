version 1.0

task TagReadWithGeneFunction {
  input {
    String mM
    String vV
  }
  command <<<
    TagReadWithGeneFunction \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}