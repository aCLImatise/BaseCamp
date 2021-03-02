version 1.0

task FilterReadspy {
  input {
    File? name_input_qseqfastqfastasequence
    File? name_output_file
    Boolean? filter_quality_reads
  }
  command <<<
    FilterReads_py \
      ~{if defined(name_input_qseqfastqfastasequence) then ("-i " +  '"' + name_input_qseqfastqfastasequence + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if (filter_quality_reads) then "-k" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_input_qseqfastqfastasequence: "Name of the input qseq/fastq/fasta/sequence file"
    name_output_file: "Name of the output file"
    filter_quality_reads: "Would not filter low quality reads if specified, only applied\\nfor qseq format\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}