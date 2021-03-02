version 1.0

task Radicalutilsfixheaderspl {
  command <<<
    radical_utils_fix_headers_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}