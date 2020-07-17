version 1.0

task ExtractReadsIds.py {
  input {
    String? input_file_fastq
    String? output_text_file
  }
  command <<<
    extract_reads_ids.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(output_text_file) then ("--output " +  '"' + output_text_file + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file in FASTQ format."
    output_text_file: "The output text file containinf the reads ids."
  }
}