version 1.0

task PrintPicrust2Configpy {
  command <<<
    print_picrust2_config_py
  >>>
  output {
    File out_stdout = stdout()
  }
}