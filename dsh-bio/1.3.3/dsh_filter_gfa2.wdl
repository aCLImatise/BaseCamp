version 1.0

task DshFilterGfa2 {
  input {
    Boolean aboutAbout
    Boolean scriptScript
    Boolean inputInputGfa2File
    Boolean outputOutputGfa2File
  }
  command <<<
    dsh-filter-gfa2 \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--script" false="" scriptScript} \
      ~{true="--input-gfa2-file" false="" inputInputGfa2File} \
      ~{true="--output-gfa2-file" false="" outputOutputGfa2File}
  >>>
}