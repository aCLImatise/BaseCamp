version 1.0

task Modelrbak {
  command <<<
    model_r_bak
  >>>
  runtime {
    docker: "quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0"
  }
  output {
    File out_stdout = stdout()
  }
}