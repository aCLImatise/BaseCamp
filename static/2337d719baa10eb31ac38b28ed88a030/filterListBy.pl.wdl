version 1.0

task FilterListBypl {
  command <<<
    filterListBy_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}