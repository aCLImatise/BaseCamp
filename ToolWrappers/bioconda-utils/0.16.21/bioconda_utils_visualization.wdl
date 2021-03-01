version 1.0

task BiocondautilsVisualization {
  input {
    String biocon_da_utils
  }
  command <<<
    bioconda_utils visualization \
      ~{biocon_da_utils}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda-utils:0.16.21--py_0"
  }
  parameter_meta {
    biocon_da_utils: ""
  }
  output {
    File out_stdout = stdout()
  }
}