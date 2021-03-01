version 1.0

task Jaffaassembly {
  command <<<
    jaffa_assembly
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}