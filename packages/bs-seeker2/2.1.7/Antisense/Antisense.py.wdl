version 1.0

task Antisensepy {
  input {
    File? input_file_format
    File? name_output_file
    Int? length_show_one
    Boolean? would_filter_reads
    String caaggaacggt
  }
  command <<<
    Antisense_py \
      ~{caaggaacggt} \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(length_show_one) then ("-l " +  '"' + length_show_one + '"') else ""} \
      ~{if (would_filter_reads) then "-k" else ""}
  >>>
  parameter_meta {
    input_file_format: "input file, format: qseq/fastq/fasta/sequence"
    name_output_file: "Name of the output file"
    length_show_one: "Length to show in one line for fasta. [Default: show all in one\\nline]"
    would_filter_reads: "Would not filter low quality reads if specified"
    caaggaacggt: "Options:"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}