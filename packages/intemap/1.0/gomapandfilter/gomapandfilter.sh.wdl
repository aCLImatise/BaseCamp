version 1.0

task Gomapandfiltersh {
  command <<<
    gomapandfilter_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}