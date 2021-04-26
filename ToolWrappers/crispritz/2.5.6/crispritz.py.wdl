version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispritz:2.5.6--py37h6580678_0"
  }
  output {
    File out_stdout = stdout()
  }
}