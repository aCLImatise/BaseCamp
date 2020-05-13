version 1.0

task MaskFastaFromBed {
  input {
    Boolean fiFi
    Boolean bedBed
    Boolean foFo
    Boolean softSoft
    Boolean mcMc
    Boolean fullFullHeader
  }
  command <<<
    maskFastaFromBed \
      ~{true="-fi" false="" fiFi} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-fo" false="" foFo} \
      ~{true="-soft" false="" softSoft} \
      ~{true="-mc" false="" mcMc} \
      ~{true="-fullHeader" false="" fullFullHeader}
  >>>
}