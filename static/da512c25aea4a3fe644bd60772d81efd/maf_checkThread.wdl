version 1.0

task MafCheckThread {
  command <<<
    maf_checkThread
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}