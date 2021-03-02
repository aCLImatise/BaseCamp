version 1.0

task Coreonlypl {
  command <<<
    core_only_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}