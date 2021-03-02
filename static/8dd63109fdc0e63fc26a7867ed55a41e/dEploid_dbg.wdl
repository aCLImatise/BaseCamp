version 1.0

task DEploidDbg {
  command <<<
    dEploid_dbg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}