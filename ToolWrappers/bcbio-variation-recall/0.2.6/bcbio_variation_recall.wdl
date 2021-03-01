version 1.0

task Bcbiovariationrecall {
  command <<<
    bcbio_variation_recall
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}