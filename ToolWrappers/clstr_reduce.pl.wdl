version 1.0

task ClstrReducepl {
  command <<<
    clstr_reduce_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}