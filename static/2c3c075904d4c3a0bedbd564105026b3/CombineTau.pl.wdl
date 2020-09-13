version 1.0

task CombineTaupl {
  command <<<
    CombineTau_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}