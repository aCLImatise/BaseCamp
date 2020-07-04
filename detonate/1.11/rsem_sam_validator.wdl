version 1.0

task RsemSamValidator {
  input {
    String input_dots_am_slash_input_dot_bam
  }
  command <<<
    rsem-sam-validator \
      ~{input_dots_am_slash_input_dot_bam}
  >>>
  parameter_meta {
    input_dots_am_slash_input_dot_bam: ""
  }
}