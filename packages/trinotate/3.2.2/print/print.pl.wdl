version 1.0

task Printpl {
  command <<<
    print_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}