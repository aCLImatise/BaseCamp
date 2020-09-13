version 1.0

task CombineAndAnnotateReferencespl {
  command <<<
    combineAndAnnotateReferences_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}