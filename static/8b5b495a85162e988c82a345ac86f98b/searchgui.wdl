version 1.0

task Searchgui {
  command <<<
    searchgui
  >>>
  runtime {
    docker: "quay.io/biocontainers/searchgui:4.0.25--h779adbc_2"
  }
  output {
    File out_stdout = stdout()
  }
}