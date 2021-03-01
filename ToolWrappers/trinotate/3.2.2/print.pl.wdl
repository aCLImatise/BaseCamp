version 1.0

task Printpl {
  command <<<
    print_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}