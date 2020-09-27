version 1.0

task Omero {
  command <<<
    omero
  >>>
  output {
    File out_stdout = stdout()
  }
}