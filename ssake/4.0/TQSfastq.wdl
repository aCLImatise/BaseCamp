version 1.0

task TQSfastq.py {
  input {
    Boolean verboseVerbose
  }
  command <<<
    TQSfastq.py \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}