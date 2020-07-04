version 1.0

task Kinwalker {
  input {
    Boolean? test
    Boolean? verbose
    String seq_file
    String outfile
  }
  command <<<
    kinwalker \
      ~{seq_file} \
      ~{outfile} \
      ~{true="--test" false="" test} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    test: "Use test sequence."
    verbose: "Verbose mode. Print debugging messages about program progress."
    seq_file: ""
    outfile: ""
  }
}