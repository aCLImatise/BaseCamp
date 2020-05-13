version 1.0

task ConusFold {
  input {
    Boolean hH
    Boolean flatFlat
  }
  command <<<
    conus_fold \
      ~{true="-H" false="" hH} \
      ~{true="--flat" false="" flatFlat}
  >>>
}