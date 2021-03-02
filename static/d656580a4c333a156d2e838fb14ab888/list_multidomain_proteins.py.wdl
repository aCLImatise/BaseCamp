version 1.0

task ListMultidomainProteinspy {
  command <<<
    list_multidomain_proteins_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}