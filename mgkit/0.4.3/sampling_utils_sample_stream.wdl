version 1.0

task SamplingutilsSampleStream {
  input {
    Boolean? verbose
    Float? prob
    Int? max_seq
    Boolean? fast_q
    String? input_file
    String? output_file
  }
  command <<<
    sampling_utils sample_stream \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""} \
      ~{if defined(max_seq) then ("--max-seq " +  '"' + max_seq + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  parameter_meta {
    verbose: ""
    prob: "Probability of picking a sequence"
    max_seq: "Maximum number of sequences"
    fast_q: "The input file is a fastq file"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}