version 1.0

task Runabysspy {
  command <<<
    runabyss_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}