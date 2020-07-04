version 1.0

task SamplingUtilsSample {
  input {
    String? prefix
    Int? number
    Float? prob
    Int? max_seq
    Boolean? fast_q
    Boolean? gzip
    String? input_file
  }
  command <<<
    sampling-utils sample \
      ~{input_file} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""} \
      ~{if defined(max_seq) then ("--max-seq " +  '"' + max_seq + '"') else ""} \
      ~{true="--fastq" false="" fast_q} \
      ~{true="--gzip" false="" gzip}
  >>>
  parameter_meta {
    prefix: "Prefix for the file name(s) in output  [default: sample]"
    number: "Number of samples to take  [default: 1]"
    prob: "Probability of picking a sequence  [default: 0.001]"
    max_seq: "Maximum number of sequences  [default: 100000]"
    fast_q: "The input file is a fastq file"
    gzip: "gzip output files"
    input_file: ""
  }
}