version 1.0

task PypgatkClipy {
  command <<<
    pypgatk_cli_py
  >>>
  output {
    File out_stdout = stdout()
  }
}