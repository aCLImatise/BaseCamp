version 1.0

task SamtoolsReheader {
  input {
    String in_dot_header_dots_am
    String in_dot_bam
  }
  command <<<
    samtools reheader \
      ~{in_dot_header_dots_am} \
      ~{in_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_header_dots_am: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}