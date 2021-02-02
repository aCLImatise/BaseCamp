version 1.0

task AutoTrinotatepl {
  command <<<
    autoTrinotate_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}