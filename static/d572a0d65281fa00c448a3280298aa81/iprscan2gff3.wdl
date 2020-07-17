version 1.0

task Iprscan2gff3 {
  input {
    String iprs_can_dot_raw
    String genome_dot_all_dot_gff
  }
  command <<<
    iprscan2gff3 \
      ~{iprs_can_dot_raw} \
      ~{genome_dot_all_dot_gff}
  >>>
  parameter_meta {
    iprs_can_dot_raw: ""
    genome_dot_all_dot_gff: ""
  }
}