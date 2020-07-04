version 1.0

task FastqUniq {
  input {
    Boolean? verbose
  }
  command <<<
    fastq-uniq \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "print status along the way"
  }
}