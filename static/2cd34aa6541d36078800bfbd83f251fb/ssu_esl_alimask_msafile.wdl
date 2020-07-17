version 1.0

task SsuEslAlimaskMsafile {
  input {
    String mask_file
  }
  command <<<
    ssu-esl-alimask msafile \
      ~{mask_file}
  >>>
  parameter_meta {
    mask_file: ""
  }
}