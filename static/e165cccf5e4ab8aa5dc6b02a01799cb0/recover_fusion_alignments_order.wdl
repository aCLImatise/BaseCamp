version 1.0

task RecoverFusionAlignmentsOrder {
  command <<<
    recover_fusion_alignments_order
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}