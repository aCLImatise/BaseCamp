version 1.0

task SlidingRead.py {
  input {
    String? first_fastq_input
    String? window
    String? step
    String? output_fastq_file
  }
  command <<<
    sliding-read.py \
      ~{if defined(first_fastq_input) then ("--input " +  '"' + first_fastq_input + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""}
  >>>
  parameter_meta {
    first_fastq_input: "The first FASTQ input file containing the short reads which are interleaved."
    window: "The size of window."
    step: "The size of window."
    output_fastq_file: "The output FASTQ file."
  }
}