version 1.0

task WgfastGenbankqc {
  command <<<
    wgfast_genbankqc
  >>>
  output {
    File out_stdout = stdout()
  }
}