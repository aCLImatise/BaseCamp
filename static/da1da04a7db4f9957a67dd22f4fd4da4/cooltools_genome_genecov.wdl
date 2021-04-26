version 1.0

task CooltoolsGenomeGenecov {
  input {
    String bins_path
    String db
  }
  command <<<
    cooltools genome genecov \
      ~{bins_path} \
      ~{db}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    bins_path: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}