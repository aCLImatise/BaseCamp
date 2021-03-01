version 1.0

task Anviscriptgetcollectioninfo {
  command <<<
    anvi_script_get_collection_info
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}