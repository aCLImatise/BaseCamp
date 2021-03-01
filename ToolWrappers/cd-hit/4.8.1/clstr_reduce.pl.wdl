version 1.0

task ClstrReducepl {
  command <<<
    clstr_reduce_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}