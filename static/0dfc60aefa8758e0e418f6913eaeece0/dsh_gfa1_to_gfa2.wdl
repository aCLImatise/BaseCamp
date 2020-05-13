version 1.0

task DshGfa1ToGfa2 {
  input {
    Boolean aboutAbout
    Boolean inputInputGfa1File
    Boolean outputOutputGfa2File
  }
  command <<<
    dsh-gfa1-to-gfa2 \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-gfa1-file" false="" inputInputGfa1File} \
      ~{true="--output-gfa2-file" false="" outputOutputGfa2File}
  >>>
}