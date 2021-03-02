version 1.0

task CombineAndAnnotateReferencespl {
  command <<<
    combineAndAnnotateReferences_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}