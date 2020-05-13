version 1.0

task NAPSSSeq fileCt file {
  input {
    String? nmrNmrFile
    String? ctCtFile
  }
  command <<<
    NAPSS seq file ct file \
      ~{nmrNmrFile} \
      ~{ctCtFile}
  >>>
}