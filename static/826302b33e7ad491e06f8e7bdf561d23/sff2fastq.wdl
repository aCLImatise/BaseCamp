version 1.0

task Sff2fastq {
  input {
    Boolean? program_version_information
    Boolean? output_untrimmed_sequence
    String? desired_fastq_output
    String? sff_file
  }
  command <<<
    sff2fastq \
      ~{sff_file} \
      ~{true="-v" false="" program_version_information} \
      ~{true="-n" false="" output_untrimmed_sequence} \
      ~{if defined(desired_fastq_output) then ("-o " +  '"' + desired_fastq_output + '"') else ""}
  >>>
  parameter_meta {
    program_version_information: "Program and version information"
    output_untrimmed_sequence: "Output the untrimmed sequence and quality scores"
    desired_fastq_output: "Desired fastq output file. If not specified, defaults to stdout"
    sff_file: ""
  }
}