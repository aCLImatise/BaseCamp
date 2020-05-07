version 1.0

task RsampleSeq fileSHAPE file {
  input {
    String? pfsPfsFile
  }
  command <<<
    Rsample seq file SHAPE file \
      ~{pfsPfsFile}
  >>>
}