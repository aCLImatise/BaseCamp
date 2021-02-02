version 1.0

task TranscovGeneratelength {
  input {
    File? output_file
    String bam_file
    String bed_file
  }
  command <<<
    transcov generate_length \
      ~{bam_file} \
      ~{bed_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    output_file: "-m, --max-length INTEGER RANGE\\n--help                          Show this message and exit.\\n"
    bam_file: ""
    bed_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}