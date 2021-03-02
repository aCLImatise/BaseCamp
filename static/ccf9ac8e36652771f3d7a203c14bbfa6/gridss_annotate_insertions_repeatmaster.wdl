version 1.0

task GridssAnnotateInsertionsRepeatmaster {
  command <<<
    gridss_annotate_insertions_repeatmaster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}