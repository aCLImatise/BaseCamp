version 1.0

task CpinsimPackage {
  input {
    String cp_in_sim
  }
  command <<<
    cpinsim package_ \
      ~{cp_in_sim}
  >>>
  parameter_meta {
    cp_in_sim: ""
  }
  output {
    File out_stdout = stdout()
  }
}