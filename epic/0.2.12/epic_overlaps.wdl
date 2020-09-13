version 1.0

task Epicoverlaps {
  command <<<
    epic_overlaps
  >>>
  output {
    File out_stdout = stdout()
  }
}