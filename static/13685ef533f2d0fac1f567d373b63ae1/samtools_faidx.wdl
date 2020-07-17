version 1.0

task SamtoolsFaidx {
  input {
    String fa_idx
    String in_dot_fast_a
  }
  command <<<
    samtools faidx \
      ~{fa_idx} \
      ~{in_dot_fast_a}
  >>>
  parameter_meta {
    fa_idx: ""
    in_dot_fast_a: ""
  }
}