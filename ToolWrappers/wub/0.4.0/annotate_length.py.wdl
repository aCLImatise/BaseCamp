version 1.0

task AnnotateLengthpy {
  input {
    String? input_format_fastq
    String? output_format_fastq
  }
  command <<<
    annotate_length_py \
      ~{if defined(input_format_fastq) then ("-i " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(output_format_fastq) then ("-o " +  '"' + output_format_fastq + '"') else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    output_format_fastq: "Output format (fastq)."
  }
  output {
    File out_stdout = stdout()
  }
}