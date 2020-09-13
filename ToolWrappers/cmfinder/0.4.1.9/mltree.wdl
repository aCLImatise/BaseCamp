version 1.0

task Mltree {
  input {
    String rate_file
    File? file
  }
  command <<<
    mltree \
      ~{rate_file} \
      ~{file}
  >>>
  parameter_meta {
    rate_file: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}