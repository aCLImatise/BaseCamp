version 1.0

task Gmx {
  input {
    Boolean? nice
    String commands
    String selections
  }
  command <<<
    gmx \
      ~{commands} \
      ~{selections} \
      ~{if (nice) then "-nice" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gromacs:2020.5--h3ddc34e_1"
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