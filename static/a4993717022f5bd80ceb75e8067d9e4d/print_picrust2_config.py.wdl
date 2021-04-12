version 1.0

task PrintPicrust2Configpy {
  command <<<
    print_picrust2_config_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/picrust2:2.4.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}