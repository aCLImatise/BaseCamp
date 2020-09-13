version 1.0

task Dxcloneasset {
  command <<<
    dx_clone_asset
  >>>
  output {
    File out_stdout = stdout()
  }
}