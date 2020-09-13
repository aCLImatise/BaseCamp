version 1.0

task Rankscriptsh {
  command <<<
    rank_script_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}