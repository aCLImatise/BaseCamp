version 1.0

task FormatScripts {
  command <<<
    format_scripts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}