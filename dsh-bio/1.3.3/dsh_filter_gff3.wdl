version 1.0

task DshFilterGff3 {
  input {
    Boolean aboutAbout
    Boolean rangeRange
    Boolean scoreScore
    Boolean scriptScript
    Boolean inputInputGff3File
    Boolean outputOutputGff3File
  }
  command <<<
    dsh-filter-gff3 \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--range" false="" rangeRange} \
      ~{true="--score" false="" scoreScore} \
      ~{true="--script" false="" scriptScript} \
      ~{true="--input-gff3-file" false="" inputInputGff3File} \
      ~{true="--output-gff3-file" false="" outputOutputGff3File}
  >>>
}