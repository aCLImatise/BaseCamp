version 1.0

task Rsemsamvalidator {
  input {
    String input_dots_am_slash_input_dot_bam
  }
  command <<<
    rsem_sam_validator \
      ~{input_dots_am_slash_input_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dots_am_slash_input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}