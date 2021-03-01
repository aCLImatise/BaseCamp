version 1.0

task SamplingutilsSampleStream {
  input {
    Float? verbose
    Int? max_seq
    Boolean? fast_q
    String? input_file
    String? output_file
  }
  command <<<
    sampling_utils sample_stream \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(max_seq) then ("--max-seq " +  '"' + max_seq + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Probability of picking a sequence"
    max_seq: "Maximum number of sequences"
    fast_q: "The input file is a fastq file"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}