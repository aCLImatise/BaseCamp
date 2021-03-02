version 1.0

task TranscovGeneratecoverage {
  input {
    String bam_file
    String bed_file
  }
  command <<<
    transcov generate_coverage \
      ~{bam_file} \
      ~{bed_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file: ""
    bed_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}