version 1.0

task Argparse2toolCheckPath {
  command <<<
    argparse2tool_check_path
  >>>
  runtime {
    docker: "quay.io/biocontainers/argparse2tool:0.4.9--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}