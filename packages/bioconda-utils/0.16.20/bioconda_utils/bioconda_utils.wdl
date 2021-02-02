version 1.0

task Biocondautils {
  command <<<
    bioconda_utils
  >>>
  output {
    File out_stdout = stdout()
  }
}