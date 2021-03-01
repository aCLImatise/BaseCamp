version 1.0

task GetRecomap {
  command <<<
    get_recomap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}