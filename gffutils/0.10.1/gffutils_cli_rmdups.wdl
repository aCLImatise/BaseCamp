version 1.0

task GffutilsCliRmdups {
  input {
    Boolean inInPlace
  }
  command <<<
    gffutils-cli rmdups \
      ~{true="--in-place" false="" inInPlace}
  >>>
}