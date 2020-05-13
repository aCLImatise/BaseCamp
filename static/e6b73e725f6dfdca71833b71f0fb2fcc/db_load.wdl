version 1.0

task DbLoad {
  input {
    Boolean bB
    Boolean oO
    String? blobBlobDir
    String? blobBlobThreshold
    String? dbDbFile
  }
  command <<<
    db_load \
      ~{blobBlobDir} \
      ~{true="-b" false="" bB} \
      ~{true="-o" false="" oO} \
      ~{blobBlobThreshold} \
      ~{dbDbFile}
  >>>
}