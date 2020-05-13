version 1.0

task DshFilterSam {
  input {
    Boolean aboutAbout
    Boolean rangeRange
    Boolean mapqMapq
    Boolean scriptScript
    Boolean inputInputSamFile
    Boolean outputOutputSamFile
  }
  command <<<
    dsh-filter-sam \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--range" false="" rangeRange} \
      ~{true="--mapq" false="" mapqMapq} \
      ~{true="--script" false="" scriptScript} \
      ~{true="--input-sam-file" false="" inputInputSamFile} \
      ~{true="--output-sam-file" false="" outputOutputSamFile}
  >>>
}