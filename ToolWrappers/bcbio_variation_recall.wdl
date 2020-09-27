version 1.0

task Bcbiovariationrecall {
  command <<<
    bcbio_variation_recall
  >>>
  output {
    File out_stdout = stdout()
  }
}