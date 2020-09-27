version 1.0

task ESTmapperpl {
  command <<<
    ESTmapper_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}