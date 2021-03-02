version 1.0

task Runseppsh {
  command <<<
    run_sepp_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}