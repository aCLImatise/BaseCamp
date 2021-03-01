version 1.0

task Casoffinder {
  command <<<
    cas_offinder
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}