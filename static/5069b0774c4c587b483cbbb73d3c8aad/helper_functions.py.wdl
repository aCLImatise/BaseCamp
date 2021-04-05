version 1.0

task HelperFunctionspy {
  command <<<
    helper_functions_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/aquamis:1.3.4--0"
  }
  output {
    File out_stdout = stdout()
  }
}