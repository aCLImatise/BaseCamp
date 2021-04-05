version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispritz:2.5.2--py38h863e69b_0"
  }
  output {
    File out_stdout = stdout()
  }
}