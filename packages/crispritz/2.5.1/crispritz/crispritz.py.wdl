version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispritz:2.5.1--py36hbd375b7_0"
  }
  output {
    File out_stdout = stdout()
  }
}