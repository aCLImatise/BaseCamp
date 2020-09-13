version 1.0

task SequenceFilterpy {
  input {
    String? input_format_fastq
    String? output_format_fastq
    Int? minimum_mean_quality
    Int? minimum_length_
    Boolean? reverse_complement_sequences
    Int? maximum_length_none
  }
  command <<<
    sequence_filter_py \
      ~{if defined(input_format_fastq) then ("-i " +  '"' + input_format_fastq + '"') else ""} \
      ~{if defined(output_format_fastq) then ("-o " +  '"' + output_format_fastq + '"') else ""} \
      ~{if defined(minimum_mean_quality) then ("-q " +  '"' + minimum_mean_quality + '"') else ""} \
      ~{if defined(minimum_length_) then ("-l " +  '"' + minimum_length_ + '"') else ""} \
      ~{if (reverse_complement_sequences) then "-c" else ""} \
      ~{if defined(maximum_length_none) then ("-u " +  '"' + maximum_length_none + '"') else ""}
  >>>
  parameter_meta {
    input_format_fastq: "Input format (fastq)."
    output_format_fastq: "Output format (fastq)."
    minimum_mean_quality: "Minimum mean quality value (0.0)."
    minimum_length_: "Minimum length (0)."
    reverse_complement_sequences: "Reverse complement sequences."
    maximum_length_none: "Maximum length (None)."
  }
  output {
    File out_stdout = stdout()
  }
}