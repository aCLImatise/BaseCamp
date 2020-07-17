version 1.0

task TQSfastq.py {
  input {
    Boolean? verbose
  }
  command <<<
    TQSfastq.py \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Runs in Verbose mode."
  }
}