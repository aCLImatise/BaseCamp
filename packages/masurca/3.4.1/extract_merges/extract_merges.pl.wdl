version 1.0

task ExtractMergespl {
  command <<<
    extract_merges_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}