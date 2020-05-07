version 1.0

task TagReadWithGeneExonFunction {
  input {
    String mM
    String vV
  }
  command <<<
    TagReadWithGeneExonFunction \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}