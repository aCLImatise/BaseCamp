version 1.0

task Mustachepl {
  command <<<
    mustache_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}