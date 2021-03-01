version 1.0

task Notacgtawk {
  command <<<
    not_acgt_awk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}