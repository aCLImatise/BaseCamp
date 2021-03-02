version 1.0

task Usedevelassertos {
  command <<<
    use_devel_assertos
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}