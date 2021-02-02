version 1.0

task TophatReports {
  input {
    String junctions_dot_bed
    String insertions_dot_vcf
    String deletions_dot_vcf
    String accepted_hits_dots_am
  }
  command <<<
    tophat_reports \
      ~{junctions_dot_bed} \
      ~{insertions_dot_vcf} \
      ~{deletions_dot_vcf} \
      ~{accepted_hits_dots_am}
  >>>
  parameter_meta {
    junctions_dot_bed: ""
    insertions_dot_vcf: ""
    deletions_dot_vcf: ""
    accepted_hits_dots_am: ""
  }
  output {
    File out_stdout = stdout()
  }
}