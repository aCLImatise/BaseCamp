version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispritz:2.5.7--py38h6148b52_1"
  }
  output {
    File out_stdout = stdout()
  }
}