version 1.0

task Novo2sampl {
  command <<<
    novo2sam_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}