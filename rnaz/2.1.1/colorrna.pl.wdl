version 1.0

task Colorrnapl {
  command <<<
    colorrna_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}