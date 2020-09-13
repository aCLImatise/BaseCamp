version 1.0

task Characterizerpl {
  command <<<
    characterizer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}