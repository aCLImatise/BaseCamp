version 1.0

task SambambaValidate {
  input {
    String input_dot_bam
  }
  command <<<
    sambamba validate \
      ~{input_dot_bam}
  >>>
  parameter_meta {
    input_dot_bam: ""
  }
}