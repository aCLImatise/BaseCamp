version 1.0

task Go2chadoxml {
  input {
    String basename
    File file
    String? suffix
  }
  command <<<
    go2chadoxml \
      ~{basename} \
      ~{file} \
      ~{suffix}
  >>>
  parameter_meta {
    basename: ""
    file: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}