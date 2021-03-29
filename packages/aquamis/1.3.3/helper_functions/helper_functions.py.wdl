version 1.0

task HelperFunctionspy {
  command <<<
    helper_functions_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/aquamis:1.3.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}