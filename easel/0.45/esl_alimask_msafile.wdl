version 1.0

task EslAlimaskMsafile {
  input {
    String mask_file
  }
  command <<<
    esl-alimask msafile \
      ~{mask_file}
  >>>
  parameter_meta {
    mask_file: ""
  }
}