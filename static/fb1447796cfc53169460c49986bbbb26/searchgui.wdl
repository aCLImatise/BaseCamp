version 1.0

task Searchgui {
  command <<<
    searchgui
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}