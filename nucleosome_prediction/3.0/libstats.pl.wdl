version 1.0

task Libstatspl {
  command <<<
    libstats_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}