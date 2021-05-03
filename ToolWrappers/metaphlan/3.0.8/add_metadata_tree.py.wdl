version 1.0

task AddMetadataTreepy {
  command <<<
    add_metadata_tree_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaphlan:3.0.8--pyhb7b1952_0"
  }
  output {
    File out_stdout = stdout()
  }
}