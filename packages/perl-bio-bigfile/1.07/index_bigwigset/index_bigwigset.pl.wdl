version 1.0

task IndexBigwigsetpl {
  command <<<
    index_bigwigset_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}