version 1.0

task CruxSearchforxlinks {
  command <<<
    crux search_for_xlinks
  >>>
  output {
    File out_stdout = stdout()
  }
}