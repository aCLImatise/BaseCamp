version 1.0

task Paraclucut {
  input {
    Boolean? maximum_cluster_length
    Boolean? minimum_density_increase
    Boolean? density_increase_applies
  }
  command <<<
    paraclu_cut \
      ~{if (maximum_cluster_length) then "-l" else ""} \
      ~{if (minimum_density_increase) then "-d" else ""} \
      ~{if (density_increase_applies) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/paraclu:10--he513fc3_0"
  }
  parameter_meta {
    maximum_cluster_length: "maximum cluster length (default 200)"
    minimum_density_increase: "minimum density increase (default 2)"
    density_increase_applies: "density increase applies to single clusters, not cumulatively"
  }
  output {
    File out_stdout = stdout()
  }
}