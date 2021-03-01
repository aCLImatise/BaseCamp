version 1.0

task Radicalutilsversion {
  command <<<
    radical_utils_version
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}