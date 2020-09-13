version 1.0

task SsueslmaskSqfile {
  input {
    String mask_file
  }
  command <<<
    ssu_esl_mask sqfile \
      ~{mask_file}
  >>>
  parameter_meta {
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}