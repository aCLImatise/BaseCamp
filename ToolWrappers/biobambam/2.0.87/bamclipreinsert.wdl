version 1.0

task Bamclipreinsert {
  command <<<
    bamclipreinsert
  >>>
  output {
    File out_stdout = stdout()
  }
}