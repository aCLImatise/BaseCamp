version 1.0

task Humann2InferTaxonomy {
  command <<<
    humann2_infer_taxonomy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}