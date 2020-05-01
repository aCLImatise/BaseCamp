version 1.0

task SplitReads {
  input {
    Boolean lL
    Boolean singleSingleEnd
  }
  command <<<
    split-reads \
      ~{true="-l" false="" lL} \
      ~{true="--single-end" false="" singleSingleEnd}
  >>>
}