version 1.0

task CombineTaupl {
  command <<<
    CombineTau_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}