version 1.0

task SamplingUtilsSampleStream {
  input {
    Float? prob
    Int? max_seq
    Boolean? fast_q
    String? input_file
    String? output_file
  }
  command <<<
    sampling-utils sample_stream \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""} \
      ~{if defined(max_seq) then ("--max-seq " +  '"' + max_seq + '"') else ""} \
      ~{true="--fastq" false="" fast_q}
  >>>
  parameter_meta {
    prob: "Probability of picking a sequence"
    max_seq: "Maximum number of sequences"
    fast_q: "The input file is a fastq file"
    input_file: ""
    output_file: ""
  }
}