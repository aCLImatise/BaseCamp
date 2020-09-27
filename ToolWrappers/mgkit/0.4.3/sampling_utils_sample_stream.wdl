version 1.0

task SamplingutilsSampleStream {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    sampling_utils sample_stream \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-r, --prob FLOAT       Probability of picking a sequence\\n-x, --max-seq INTEGER  Maximum number of sequences\\n-q, --fastq            The input file is a fastq file\\n--help                 Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}