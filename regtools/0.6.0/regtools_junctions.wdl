version 1.0

task RegtoolsJunctions {
  command <<<
    regtools junctions
  >>>
  output {
    File out_stdout = stdout()
  }
}