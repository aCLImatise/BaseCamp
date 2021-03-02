version 1.0

task MultiLengthHistpy {
  input {
    String? report_pdf
    String? input_format_fastq
    Int? number_of_bins
    Int? minimum_read_length
    Int? maximum_read_length
    Boolean? log_transform_lengths
    String input_counts
  }
  command <<<
    multi_length_hist_py \
      ~{input_counts} \
      ~{if defined(report_pdf) then ("-r " +  '"' + report_pdf + '"') else ""} \
      ~{if defined(input_format_fastq) then ("-f " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(number_of_bins) then ("-b " +  '"' + number_of_bins + '"') else ""} \
      ~{if defined(minimum_read_length) then ("-l " +  '"' + minimum_read_length + '"') else ""} \
      ~{if defined(maximum_read_length) then ("-u " +  '"' + maximum_read_length + '"') else ""} \
      ~{if (log_transform_lengths) then "-L" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_pdf: "Report PDF."
    input_format_fastq: "Input format (fastq)."
    number_of_bins: "Number of bins (50)."
    minimum_read_length: "Minimum read length (None)."
    maximum_read_length: "Maximum read length (None)."
    log_transform_lengths: "Log transform lengths."
    input_counts: "Input sequence files."
  }
  output {
    File out_stdout = stdout()
  }
}