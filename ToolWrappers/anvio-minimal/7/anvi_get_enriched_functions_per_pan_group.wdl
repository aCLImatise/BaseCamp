version 1.0

task Anvigetenrichedfunctionsperpangroup {
  command <<<
    anvi_get_enriched_functions_per_pan_group
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}