version 1.0

task MScomptaxa {
  command <<<
    MS_comp_taxa
  >>>
  runtime {
    docker: "quay.io/biocontainers/dms:1.1--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}