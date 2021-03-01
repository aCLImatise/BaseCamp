version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}