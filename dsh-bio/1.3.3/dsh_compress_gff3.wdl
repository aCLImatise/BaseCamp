version 1.0

task DshCompressGff3 {
  input {
    Boolean aboutAbout
    Boolean inputInputGff3File
    Boolean outputOutputGff3File
  }
  command <<<
    dsh-compress-gff3 \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-gff3-file" false="" inputInputGff3File} \
      ~{true="--output-gff3-file" false="" outputOutputGff3File}
  >>>
}