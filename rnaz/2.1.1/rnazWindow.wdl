version 1.0

task RnazWindow.pl {
  input {
    Boolean bothBothStrands
    Boolean noNoReference
    Boolean noNoRangeCheck
    Boolean verboseVerbose
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazWindow.pl \
      ~{fileFile} \
      ~{true="--both-strands" false="" bothBothStrands} \
      ~{true="--no-reference" false="" noNoReference} \
      ~{true="--no-rangecheck" false="" noNoRangeCheck} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--man" false="" manMan}
  >>>
}