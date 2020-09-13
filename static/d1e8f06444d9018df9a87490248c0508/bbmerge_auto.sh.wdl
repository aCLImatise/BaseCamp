version 1.0

task Bbmergeautosh {
  command <<<
    bbmerge_auto_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}