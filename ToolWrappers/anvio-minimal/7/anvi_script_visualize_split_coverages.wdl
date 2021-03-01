version 1.0

task Anviscriptvisualizesplitcoverages {
  command <<<
    anvi_script_visualize_split_coverages
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}