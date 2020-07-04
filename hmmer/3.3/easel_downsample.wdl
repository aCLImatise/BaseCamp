version 1.0

task EaselDownsample {
  input {
    Boolean? sequence_sampling_infile
    Boolean? big_sequence_sample
    String? seed
    Boolean? options
  }
  command <<<
    easel downsample \
      ~{true="-s" false="" sequence_sampling_infile} \
      ~{true="-S" false="" big_sequence_sample} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    sequence_sampling_infile: ": sequence sampling: <infile> is file or stream of seqs"
    big_sequence_sample: ": big sequence sample: <infile> is (seekable) seq file"
    seed: ": set random number generator seed  [0]"
    options: ""
  }
}