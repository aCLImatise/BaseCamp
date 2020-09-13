version 1.0

task Sff2fastq {
  input {
    Boolean? program_version_information
    Boolean? output_untrimmed_sequence
    File? desired_fastq_output
    String? sff_file
  }
  command <<<
    sff2fastq \
      ~{sff_file} \
      ~{if (program_version_information) then "-v" else ""} \
      ~{if (output_untrimmed_sequence) then "-n" else ""} \
      ~{if defined(desired_fastq_output) then ("-o " +  '"' + desired_fastq_output + '"') else ""}
  >>>
  parameter_meta {
    program_version_information: "Program and version information"
    output_untrimmed_sequence: "Output the untrimmed sequence and quality scores"
    desired_fastq_output: "Desired fastq output file. If not specified, defaults to stdout"
    sff_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_desired_fastq_output = "${in_desired_fastq_output}"
  }
}