version 1.0

task Antisense.py {
  input {
    File? input_file_format
    File? name_output_file
    Int? length_show_one
    Boolean? would_filter_reads
  }
  command <<<
    Antisense.py \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(length_show_one) then ("-l " +  '"' + length_show_one + '"') else ""} \
      ~{true="-k" false="" would_filter_reads}
  >>>
  parameter_meta {
    input_file_format: "input file, format: qseq/fastq/fasta/sequence"
    name_output_file: "Name of the output file"
    length_show_one: "Length to show in one line for fasta. [Default: show all in one line]"
    would_filter_reads: "Would not filter low quality reads if specified"
  }
}