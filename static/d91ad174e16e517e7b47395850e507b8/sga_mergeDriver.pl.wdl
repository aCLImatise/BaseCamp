version 1.0

task SgamergeDriverpl {
  command <<<
    sga_mergeDriver_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}