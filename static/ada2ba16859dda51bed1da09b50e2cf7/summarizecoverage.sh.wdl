version 1.0

task Summarizecoveragesh {
  command <<<
    summarizecoverage_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}