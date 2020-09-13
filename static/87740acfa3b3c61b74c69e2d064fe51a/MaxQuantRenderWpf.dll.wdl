version 1.0

task MaxQuantRenderWpfdll {
  command <<<
    MaxQuantRenderWpf_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}