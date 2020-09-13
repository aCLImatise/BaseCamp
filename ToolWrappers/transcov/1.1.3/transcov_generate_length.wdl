version 1.0

task TranscovGeneratelength {
  input {
    File? output_file
    Int? max_length
    String bam_file
    String bed_file
  }
  command <<<
    transcov generate_length \
      ~{bam_file} \
      ~{bed_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""}
  >>>
  parameter_meta {
    output_file: ""
    max_length: "RANGE"
    bam_file: ""
    bed_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}