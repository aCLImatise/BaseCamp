version 1.0

task Combigscriptsh {
  command <<<
    combig_script_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}