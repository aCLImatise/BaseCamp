version 1.0

task ZorroDistpl {
  command <<<
    zorro_dist_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}