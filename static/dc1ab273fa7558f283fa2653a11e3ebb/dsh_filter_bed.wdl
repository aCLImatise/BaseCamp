version 1.0

task DshFilterBed {
  input {
    Boolean aboutAbout
    Boolean rangeRange
    Boolean scoreScore
    Boolean scriptScript
    Boolean inputInputBedFile
    Boolean outputOutputBedFile
  }
  command <<<
    dsh-filter-bed \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--range" false="" rangeRange} \
      ~{true="--score" false="" scoreScore} \
      ~{true="--script" false="" scriptScript} \
      ~{true="--input-bed-file" false="" inputInputBedFile} \
      ~{true="--output-bed-file" false="" outputOutputBedFile}
  >>>
}