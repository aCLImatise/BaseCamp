version 1.0

task Generatemigrationtrees {
  input {
    String anatomical_sites
  }
  command <<<
    generatemigrationtrees \
      ~{anatomical_sites}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    anatomical_sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}