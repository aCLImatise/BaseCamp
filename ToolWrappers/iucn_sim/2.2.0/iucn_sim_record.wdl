version 1.0

task IucnSimRecord {
  input {
    String iucn_sim
  }
  command <<<
    iucn_sim record \
      ~{iucn_sim}
  >>>
  runtime {
    docker: "quay.io/biocontainers/iucn_sim:2.2.0--pyr40_0"
  }
  parameter_meta {
    iucn_sim: ""
  }
  output {
    File out_stdout = stdout()
  }
}