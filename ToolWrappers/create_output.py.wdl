version 1.0

task CreateOutputpy {
  command <<<
    create_output_py
  >>>
  output {
    File out_stdout = stdout()
  }
}