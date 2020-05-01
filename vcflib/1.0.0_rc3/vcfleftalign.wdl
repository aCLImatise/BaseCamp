version 1.0

task Vcfleftalign {
  input {
    File referenceReference
    String windowWindow
    File? fileFile
  }
  command <<<
    vcfleftalign \
      ~{fileFile} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""}
  >>>
}