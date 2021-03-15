version 1.0

task AmpliconContingencyTablepy {
  command <<<
    amplicon_contingency_table_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/swarm:3.1.0--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}