version 1.0

task Crispritzpy {
  command <<<
    crispritz_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispritz:2.5.4--py36h0bca50a_0"
  }
  output {
    File out_stdout = stdout()
  }
}