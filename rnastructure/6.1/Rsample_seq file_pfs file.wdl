version 1.0

task RsampleSeq filePfs file {
  input {
    String? shapefileShapefile
    String? pfsPfsFile
  }
  command <<<
    Rsample seq file pfs file \
      ~{shapefileShapefile} \
      ~{pfsPfsFile}
  >>>
}