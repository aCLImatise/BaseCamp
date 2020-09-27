version 1.0

task SelectForRandfoldpl {
  command <<<
    select_for_randfold_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}