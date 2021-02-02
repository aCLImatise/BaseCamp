version 1.0

task Unzipsh {
  input {
    String in
  }
  command <<<
    unzip_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}