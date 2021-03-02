version 1.0

task SecaprSupermatrix {
  input {
    String sec_apr
  }
  command <<<
    secapr supermatrix \
      ~{sec_apr}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    sec_apr: ""
  }
  output {
    File out_stdout = stdout()
  }
}