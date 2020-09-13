version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  output {
    File out_stdout = stdout()
  }
}