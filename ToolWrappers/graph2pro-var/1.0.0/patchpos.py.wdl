version 1.0

task Patchpospy {
  command <<<
    patchpos_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}