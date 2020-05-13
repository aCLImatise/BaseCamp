version 1.0

task DshTraversePaths {
  input {
    Boolean aboutAbout
    Boolean inputInputGfa1File
    Boolean outputOutputGfa1File
  }
  command <<<
    dsh-traverse-paths \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-gfa1-file" false="" inputInputGfa1File} \
      ~{true="--output-gfa1-file" false="" outputOutputGfa1File}
  >>>
}