version 1.0

task Locarnamotifscan {
  command <<<
    locarna_motif_scan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}