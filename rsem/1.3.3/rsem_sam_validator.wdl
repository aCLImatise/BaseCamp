version 1.0

task RsemSamValidator {
  input {
    String input_dots_am_slash_input_dot_bam_slash_input_dot_cram
  }
  command <<<
    rsem-sam-validator \
      ~{input_dots_am_slash_input_dot_bam_slash_input_dot_cram}
  >>>
  parameter_meta {
    input_dots_am_slash_input_dot_bam_slash_input_dot_cram: ""
  }
}