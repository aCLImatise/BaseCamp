version 1.0

task FCSKeywordR {
  command <<<
    FCSKeyword_R
  >>>
  output {
    File out_stdout = stdout()
  }
}