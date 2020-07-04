version 1.0

task AlignTrimNNbases {
  input {
    Boolean? verbose
  }
  command <<<
    align_trim_n nbases \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: ""
  }
}