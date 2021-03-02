version 1.0

task SequenceSubtractpy {
  input {
    String? input_format_fastq
    String? output_format_fastq
  }
  command <<<
    sequence_subtract_py \
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