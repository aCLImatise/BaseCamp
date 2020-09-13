version 1.0

task Radicalutilsversion {
  command <<<
    radical_utils_version
  >>>
  output {
    File out_stdout = stdout()
  }
}