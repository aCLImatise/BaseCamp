version 1.0

task Dcmftest {
  input {
    File? fileFile
  }
  command <<<
    dcmftest \
      ~{fileFile}
  >>>
}