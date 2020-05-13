version 1.0

task DshCompressBed {
  input {
    Boolean aboutAbout
    Boolean inputInputBedFile
    Boolean outputOutputBedFile
  }
  command <<<
    dsh-compress-bed \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-bed-file" false="" inputInputBedFile} \
      ~{true="--output-bed-file" false="" outputOutputBedFile}
  >>>
}