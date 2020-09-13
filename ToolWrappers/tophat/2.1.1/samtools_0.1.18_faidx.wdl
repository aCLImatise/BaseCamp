version 1.0

task Samtools0118Faidx {
  input {
    String fa_idx
    String in_dot_fast_a
  }
  command <<<
    samtools_0_1_18 faidx \
      ~{fa_idx} \
      ~{in_dot_fast_a}
  >>>
  parameter_meta {
    fa_idx: ""
    in_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}