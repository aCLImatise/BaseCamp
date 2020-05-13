version 1.0

task Txt2mzmlFileIn {
  input {
    File? fileFileOut
  }
  command <<<
    txt2mzml fileIn \
      ~{fileFileOut}
  >>>
}