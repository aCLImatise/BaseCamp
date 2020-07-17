version 1.0

task SsuEslMaskSqfile {
  input {
    String mask_file
  }
  command <<<
    ssu-esl-mask sqfile \
      ~{mask_file}
  >>>
  parameter_meta {
    mask_file: ""
  }
}