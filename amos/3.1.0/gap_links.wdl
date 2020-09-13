version 1.0

task Gaplinks {
  command <<<
    gap_links
  >>>
  output {
    File out_stdout = stdout()
  }
}