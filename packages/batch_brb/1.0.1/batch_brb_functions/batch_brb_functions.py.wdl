version 1.0

task BatchBrbFunctionspy {
  command <<<
    batch_brb_functions_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}