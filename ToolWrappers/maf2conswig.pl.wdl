version 1.0

task Maf2conswigpl {
  command <<<
    maf2conswig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}