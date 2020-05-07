version 1.0

task DshCompressSam {
  input {
    Boolean aboutAbout
    Boolean inputInputSamFile
    Boolean outputOutputSamFile
  }
  command <<<
    dsh-compress-sam \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-sam-file" false="" inputInputSamFile} \
      ~{true="--output-sam-file" false="" outputOutputSamFile}
  >>>
}