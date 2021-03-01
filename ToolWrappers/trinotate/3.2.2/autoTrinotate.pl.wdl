version 1.0

task AutoTrinotatepl {
  command <<<
    autoTrinotate_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}