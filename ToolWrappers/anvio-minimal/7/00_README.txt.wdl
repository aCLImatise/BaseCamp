version 1.0

task 0READMEtxt {
  command <<<
    _0_README_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}