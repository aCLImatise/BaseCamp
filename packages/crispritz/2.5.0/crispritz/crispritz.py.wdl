version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispritz:2.5.0--py37h36a7b89_0"
  }
  output {
    File out_stdout = stdout()
  }
}