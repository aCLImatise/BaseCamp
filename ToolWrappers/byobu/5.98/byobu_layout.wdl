version 1.0

task Byobulayout {
  command <<<
    byobu_layout
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}