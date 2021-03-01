version 1.0

task ArbPtServer {
  command <<<
    arb_pt_server
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}