version 1.0

task MugsyWGA {
  command <<<
    mugsyWGA
  >>>
  output {
    File out_stdout = stdout()
  }
}