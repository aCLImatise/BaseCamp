version 1.0

task Arvmigratedocker19Infile {
  input {
    Boolean? force
    Boolean? verbose
    Int arv_migrate_docker_one_nine
  }
  command <<<
    arv_migrate_docker19 infile \
      ~{arv_migrate_docker_one_nine} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arvados-python-client:2.1.1--py_0"
  }
  parameter_meta {
    force: ""
    verbose: ""
    arv_migrate_docker_one_nine: ""
  }
  output {
    File out_stdout = stdout()
  }
}