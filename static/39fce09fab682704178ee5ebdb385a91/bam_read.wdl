version 1.0

task Bamread {
  input {
    String bam_file
    String output_csv
  }
  command <<<
    bam_read \
      ~{bam_file} \
      ~{output_csv}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file: ""
    output_csv: ""
  }
  output {
    File out_stdout = stdout()
  }
}