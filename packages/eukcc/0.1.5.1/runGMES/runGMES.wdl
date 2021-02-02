version 1.0

task RunGMES {
  input {
    String basename
    File file
    String? suffix
  }
  command <<<
    runGMES \
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