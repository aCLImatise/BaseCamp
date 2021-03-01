version 1.0

task PrintPicrust2Configpy {
  command <<<
    print_picrust2_config_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}