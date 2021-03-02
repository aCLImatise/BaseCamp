version 1.0

task Epic2bw {
  command <<<
    epic2_bw
  >>>
  runtime {
    docker: "quay.io/biocontainers/epic2:0.0.48--py37hd0e48df_0"
  }
  output {
    File out_stdout = stdout()
  }
}