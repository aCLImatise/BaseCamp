version 1.0

task Soap2sampl {
  command <<<
    soap2sam_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}