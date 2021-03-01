version 1.0

task MaxQuantRenderWpfdll {
  command <<<
    MaxQuantRenderWpf_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}