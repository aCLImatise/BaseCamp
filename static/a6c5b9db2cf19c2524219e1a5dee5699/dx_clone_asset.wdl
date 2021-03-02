version 1.0

task Dxcloneasset {
  command <<<
    dx_clone_asset
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}