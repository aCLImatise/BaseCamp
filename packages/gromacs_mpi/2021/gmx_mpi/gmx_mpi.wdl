version 1.0

task GmxMpi {
  input {
    Boolean? nice
    String commands
    String selections
  }
  command <<<
    gmx_mpi \
      ~{commands} \
      ~{selections} \
      ~{if (nice) then "-nice" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gromacs_mpi:2021--h7701ab9_0"
  }
  parameter_meta {
    nice: "<int>              (19)\\nSet the nicelevel (default depends on command)"
    commands: "List of available commands"
    selections: "Selection syntax and usage"
  }
  output {
    File out_stdout = stdout()
  }
}