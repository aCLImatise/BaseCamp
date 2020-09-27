version 1.0

task Triangle2listpl {
  command <<<
    triangle2list_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}