version 1.0

task SnpFunctionspy {
  command <<<
    snp_functions_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/snipit:1.0.3--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}