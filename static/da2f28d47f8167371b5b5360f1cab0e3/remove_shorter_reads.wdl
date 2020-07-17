version 1.0

task RemoveShorterReads.py {
  input {
    String? input_file_fastq
    String? output_fastq_file
    String? threshold
  }
  command <<<
    remove_shorter_reads.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file (in FASTQ format) containing the short reads to be processed."
    output_fastq_file: "The output FASTQ file containing the short reads where the reads which are shorter then a given threshold are removed."
    threshold: "If if this is larger than zero then all the short reads strictly shorter than this threshold are removed. Default is 0."
  }
}