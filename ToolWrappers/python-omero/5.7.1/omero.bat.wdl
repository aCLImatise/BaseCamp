version 1.0

task Omerobat {
  command <<<
    omero_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}