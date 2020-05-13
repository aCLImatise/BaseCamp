version 1.0

task Txt2mzmlFileOut {
  input {
    File? fileFileIn
    File? fileFileOut
  }
  command <<<
    txt2mzml fileOut \
      ~{fileFileIn} \
      ~{fileFileOut}
  >>>
}