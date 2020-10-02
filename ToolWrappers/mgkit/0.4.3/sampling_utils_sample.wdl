version 1.0

task SamplingutilsSample {
  input {
    Boolean? verbose
    String? input_file
  }
  command <<<
    sampling_utils sample \
      ~{input_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-p, --prefix TEXT      Prefix for the file name(s) in output  [default:\\nsample]\\n-n, --number INTEGER   Number of samples to take  [default: 1]\\n-r, --prob FLOAT       Probability of picking a sequence  [default: 0.001]\\n-x, --max-seq INTEGER  Maximum number of sequences  [default: 100000]\\n-q, --fastq            The input file is a fastq file\\n-z, --gzip             gzip output files\\n--help                 Show this message and exit.\\n"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}