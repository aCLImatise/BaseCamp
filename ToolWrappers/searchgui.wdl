version 1.0

task Searchgui {
  command <<<
    searchgui
  >>>
  output {
    File out_stdout = stdout()
  }
}