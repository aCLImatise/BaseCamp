version 1.0

task ConnectSubcontigsGMcloser2pl {
  command <<<
    connect_subcontigs_GMcloser2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}