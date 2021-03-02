version 1.0

task Dxuploadalloutputs {
  command <<<
    dx_upload_all_outputs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}