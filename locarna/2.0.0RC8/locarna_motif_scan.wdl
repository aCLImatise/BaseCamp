version 1.0

task Locarnamotifscan {
  command <<<
    locarna_motif_scan
  >>>
  output {
    File out_stdout = stdout()
  }
}