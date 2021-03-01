version 1.0

task Modeldiploidr {
  command <<<
    model_diploid_r
  >>>
  runtime {
    docker: "quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0"
  }
  output {
    File out_stdout = stdout()
  }
}