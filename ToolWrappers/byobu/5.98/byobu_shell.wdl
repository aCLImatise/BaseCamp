version 1.0

task Byobushell {
  command <<<
    byobu_shell
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}