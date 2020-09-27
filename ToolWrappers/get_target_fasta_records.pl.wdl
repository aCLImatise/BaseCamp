version 1.0

task GetTargetFastaRecordspl {
  input {
    String this
    String all_dot_fa
  }
  command <<<
    get_target_fasta_records_pl \
      ~{this} \
      ~{all_dot_fa}
  >>>
  parameter_meta {
    this: ""
    all_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}