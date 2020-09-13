version 1.0

task BlastdbAliastool {
  input {
    String? num_volumes_dot
  }
  command <<<
    blastdb_aliastool \
      ~{if defined(num_volumes_dot) then ("-num_volumes. " +  '"' + num_volumes_dot + '"') else ""}
  >>>
  parameter_meta {
    num_volumes_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}