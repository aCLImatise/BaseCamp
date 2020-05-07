version 1.0

task GffutilsCliRmdupsFilename {
  input {
    Boolean inInPlace
    File? filenameFilename
  }
  command <<<
    gffutils-cli rmdups filename \
      ~{filenameFilename} \
      ~{true="--in-place" false="" inInPlace}
  >>>
}