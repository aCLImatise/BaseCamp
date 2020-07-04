version 1.0

task Unshuffle.py {
  input {
    String? first_fastq_input
    String? forward
    String? reverse
  }
  command <<<
    unshuffle.py \
      ~{if defined(first_fastq_input) then ("--input " +  '"' + first_fastq_input + '"') else ""} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""}
  >>>
  parameter_meta {
    first_fastq_input: "The first FASTQ input file containing the short reads which are interleaved."
    forward: "The output FASTQ file where the forward short reads from the input FASTQ."
    reverse: "The output FASTQ file where the reverse short reads from the input FASTQ."
  }
}