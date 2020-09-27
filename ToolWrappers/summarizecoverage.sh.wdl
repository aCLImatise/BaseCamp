version 1.0

task Summarizecoveragesh {
  command <<<
    summarizecoverage_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}