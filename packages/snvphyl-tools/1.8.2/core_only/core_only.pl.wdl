version 1.0

task Coreonlypl {
  command <<<
    core_only_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}