version 1.0

task NAPSSSeq fileNMR file {
  input {
    String? ctCtFile
  }
  command <<<
    NAPSS seq file NMR file \
      ~{ctCtFile}
  >>>
}