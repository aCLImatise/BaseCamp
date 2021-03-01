version 1.0

task Gaplinks {
  command <<<
    gap_links
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}