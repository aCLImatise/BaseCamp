version 1.0

task ExtractMAFblockpl {
  command <<<
    extractMAFblock_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}