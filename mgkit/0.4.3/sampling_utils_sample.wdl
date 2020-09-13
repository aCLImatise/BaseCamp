version 1.0

task SamplingutilsSample {
  input {
    Boolean? verbose
    File? prefix
    Int? number
    Float? prob
    Int? max_seq
    Boolean? fast_q
    Boolean? gzip
    String? input_file
  }
  command <<<
    sampling_utils sample \
      ~{input_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""} \
      ~{if defined(max_seq) then ("--max-seq " +  '"' + max_seq + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  parameter_meta {
    verbose: ""
    prefix: "Prefix for the file name(s) in output  [default:\\nsample]"
    number: "Number of samples to take  [default: 1]"
    prob: "Probability of picking a sequence  [default: 0.001]"
    max_seq: "Maximum number of sequences  [default: 100000]"
    fast_q: "The input file is a fastq file"
    gzip: "gzip output files"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}