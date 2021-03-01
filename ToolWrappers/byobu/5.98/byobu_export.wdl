version 1.0

task Byobuexport {
  command <<<
    byobu_export
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}