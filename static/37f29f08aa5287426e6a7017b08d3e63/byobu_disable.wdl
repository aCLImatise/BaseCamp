version 1.0

task Byobudisable {
  command <<<
    byobu_disable
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}