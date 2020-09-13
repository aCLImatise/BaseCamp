version 1.0

task IucnSimRecord {
  input {
    String iucn_sim
  }
  command <<<
    iucn_sim record \
      ~{iucn_sim}
  >>>
  parameter_meta {
    iucn_sim: ""
  }
  output {
    File out_stdout = stdout()
  }
}