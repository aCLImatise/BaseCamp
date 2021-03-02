version 1.0

task FastxGreppy {
  input {
    String? input_format_fastq
    String? output_format_fastq
    String? comma_separated_list
  }
  command <<<
    fastx_grep_py \
      ~{if defined(input_format_fastq) then ("-i " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(output_format_fastq) then ("-o " +  '"' + output_format_fastq + '"') else ""} \
      ~{if defined(comma_separated_list) then ("-n " +  '"' + comma_separated_list + '"') else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    output_format_fastq: "Output format (fastq)."
    comma_separated_list: "Comma separated list of read names to select."
  }
  output {
    File out_stdout = stdout()
  }
}