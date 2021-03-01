version 1.0

task FCSKeywordR {
  command <<<
    FCSKeyword_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}