version 1.0

task SgamergeDriverpl {
  command <<<
    sga_mergeDriver_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}