version 1.0

task ExtractMAFblockpl {
  command <<<
    extractMAFblock_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}