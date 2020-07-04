version 1.0

task GtfToSam {
  input {
    String cufflinks
  }
  command <<<
    gtf_to_sam \
      ~{cufflinks}
  >>>
  parameter_meta {
    cufflinks: ""
  }
}