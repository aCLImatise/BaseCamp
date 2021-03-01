version 1.0

task Atomtype {
  command <<<
    atomtype
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}