version 1.0

task ExtractCountFreqPpl {
  command <<<
    ExtractCountFreqP_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}