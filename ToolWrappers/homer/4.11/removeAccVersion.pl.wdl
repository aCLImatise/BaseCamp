version 1.0

task RemoveAccVersionpl {
  command <<<
    removeAccVersion_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}