version 1.0

task Rsemsamvalidator {
  input {
    String input_dots_am_slash_input_dot_bam_slash_input_dot_cram
  }
  command <<<
    rsem_sam_validator \
      ~{input_dots_am_slash_input_dot_bam_slash_input_dot_cram}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dots_am_slash_input_dot_bam_slash_input_dot_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}