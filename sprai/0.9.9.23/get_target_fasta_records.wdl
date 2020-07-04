version 1.0

task GetTargetFastaRecords.pl {
  input {
    String this
    String all_dot_fa
  }
  command <<<
    get_target_fasta_records.pl \
      ~{this} \
      ~{all_dot_fa}
  >>>
  parameter_meta {
    this: ""
    all_dot_fa: ""
  }
}