version 1.0

task Radicalutilspylintsh {
  command <<<
    radical_utils_pylint_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}