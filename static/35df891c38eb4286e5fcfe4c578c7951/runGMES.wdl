version 1.0

task RunGMES {
  input {
    String basename
    File var_file
    String? suffix
  }
  command <<<
    runGMES \
      ~{basename} \
      ~{var_file} \
      ~{suffix}
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukcc:0.3--py_0"
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