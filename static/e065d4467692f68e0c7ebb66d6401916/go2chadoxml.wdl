version 1.0

task Go2chadoxml {
  input {
    String basename
    File var_file
    String? suffix
  }
  command <<<
    go2chadoxml \
      ~{basename} \
      ~{var_file} \
      ~{suffix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    basename: ""
    var_file: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}