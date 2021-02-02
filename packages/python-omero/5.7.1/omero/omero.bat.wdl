version 1.0

task Omerobat {
  command <<<
    omero_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}