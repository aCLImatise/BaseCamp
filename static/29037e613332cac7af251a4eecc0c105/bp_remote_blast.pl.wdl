version 1.0

task BpRemoteBlastpl {
  input {
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_remote_blast_pl \
      ~{bioperl_lat_bioperl_dot_org}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
  }
}