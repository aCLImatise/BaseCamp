version 1.0

task PyensemblGenomes {
  input {
    String manipulate
    String py_ensembl
  }
  command <<<
    pyensembl genomes_ \
      ~{manipulate} \
      ~{py_ensembl}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyensembl:1.9.1--pyh3252c3a_0"
  }
  parameter_meta {
    manipulate: ""
    py_ensembl: ""
  }
  output {
    File out_stdout = stdout()
  }
}