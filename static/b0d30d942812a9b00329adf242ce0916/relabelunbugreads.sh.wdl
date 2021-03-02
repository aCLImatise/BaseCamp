version 1.0

task Relabelunbugreadssh {
  command <<<
    relabelunbugreads_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}