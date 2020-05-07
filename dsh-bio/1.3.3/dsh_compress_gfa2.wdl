version 1.0

task DshCompressGfa2 {
  input {
    Boolean aboutAbout
    Boolean inputInputGfa2File
    Boolean outputOutputGfa2File
  }
  command <<<
    dsh-compress-gfa2 \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-gfa2-file" false="" inputInputGfa2File} \
      ~{true="--output-gfa2-file" false="" outputOutputGfa2File}
  >>>
}