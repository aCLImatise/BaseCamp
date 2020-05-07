version 1.0

task Primerclip {
  input {
    Boolean bedBedPe
    Boolean singleSingleEnd
  }
  command <<<
    primerclip \
      ~{true="--bedpe" false="" bedBedPe} \
      ~{true="--single-end" false="" singleSingleEnd}
  >>>
}