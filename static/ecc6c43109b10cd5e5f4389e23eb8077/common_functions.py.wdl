version 1.0

task CommonFunctionspy {
  command <<<
    common_functions_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0"
  }
  output {
    File out_stdout = stdout()
  }
}