version 1.0

task EaselDownsample {
  input {
    Boolean? sequence_sampling_infile
    Boolean? big_sequence_sample
    Int? seed
    Boolean? options
    String m
  }
  command <<<
    easel downsample \
      ~{m} \
      ~{if (sequence_sampling_infile) then "-s" else ""} \
      ~{if (big_sequence_sample) then "-S" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence_sampling_infile: ": sequence sampling: <infile> is file or stream of seqs"
    big_sequence_sample: ": big sequence sample: <infile> is (seekable) seq file"
    seed: ": set random number generator seed  [0]"
    options: ""
    m: ""
  }
  output {
    File out_stdout = stdout()
  }
}