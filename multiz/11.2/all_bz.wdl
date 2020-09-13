version 1.0

task AllBz {
  command <<<
    all_bz
  >>>
  output {
    File out_stdout = stdout()
  }
}