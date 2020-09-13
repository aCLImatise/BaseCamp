version 1.0

task SplitFastxpy {
  input {
    String? input_format_fastq
    String? output_format_fastq
    Int? batch_size_none
  }
  command <<<
    split_fastx_py \
      ~{if defined(input_format_fastq) then ("-i " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(output_format_fastq) then ("-o " +  '"' + output_format_fastq + '"') else ""} \
      ~{if defined(batch_size_none) then ("-b " +  '"' + batch_size_none + '"') else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    output_format_fastq: "Output format (fastq)."
    batch_size_none: "Batch size (None)."
  }
  output {
    File out_stdout = stdout()
  }
}