version 1.0

task Elprep {
  command <<<
    elprep
  >>>
  output {
    File out_stdout = stdout()
  }
}