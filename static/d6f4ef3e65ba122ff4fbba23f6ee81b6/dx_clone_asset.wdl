version 1.0

task Dxcloneasset {
  command <<<
    dx_clone_asset
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}