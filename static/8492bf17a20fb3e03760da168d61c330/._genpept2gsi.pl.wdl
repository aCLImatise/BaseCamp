version 1.0

task _genpept2gsipl {
  command <<<
    __genpept2gsi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}