version 1.0

task Radicalutilsfixheaderspl {
  command <<<
    radical_utils_fix_headers_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}