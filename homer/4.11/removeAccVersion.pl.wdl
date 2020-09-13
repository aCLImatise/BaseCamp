version 1.0

task RemoveAccVersionpl {
  command <<<
    removeAccVersion_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}