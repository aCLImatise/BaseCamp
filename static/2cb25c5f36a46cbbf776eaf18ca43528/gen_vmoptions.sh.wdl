version 1.0

task GenVmoptionssh {
  command <<<
    gen_vmoptions_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0"
  }
  output {
    File out_stdout = stdout()
  }
}