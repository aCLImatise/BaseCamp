version 1.0

task GridssAnnotateInsertionsRepeatmaster {
  command <<<
    gridss_annotate_insertions_repeatmaster
  >>>
  output {
    File out_stdout = stdout()
  }
}