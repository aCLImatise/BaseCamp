version 1.0

task Grasspl {
  command <<<
    grass_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}