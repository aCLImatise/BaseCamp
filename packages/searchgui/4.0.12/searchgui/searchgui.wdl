version 1.0

task Searchgui {
  command <<<
    searchgui
  >>>
  runtime {
    docker: "quay.io/biocontainers/searchgui:4.0.12--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}