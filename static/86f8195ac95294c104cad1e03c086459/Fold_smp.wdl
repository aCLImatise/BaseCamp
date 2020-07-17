version 1.0

task FoldSmp {
  input {
    String fold
    String sequence_file
    String ct_file
  }
  command <<<
    Fold-smp \
      ~{fold} \
      ~{sequence_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    fold: ""
    sequence_file: ""
    ct_file: ""
  }
}