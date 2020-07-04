version 1.0

task Shuffle.py {
  input {
    String? input_one
    String? input_two
    String? output_fastq_file
  }
  command <<<
    shuffle.py \
      ~{if defined(input_one) then ("--input_1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(input_two) then ("--input_2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""}
  >>>
  parameter_meta {
    input_one: "The first FASTQ input file containing the short reads to be interleaved."
    input_two: "The second FASTQ input file containing the short reads to be interleaved."
    output_fastq_file: "The output FASTQ file where the short reads from the two input FASTQ files are interleaved."
  }
}