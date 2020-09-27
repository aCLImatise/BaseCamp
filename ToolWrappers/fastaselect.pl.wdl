version 1.0

task Fastaselectpl {
  command <<<
    fastaselect_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}