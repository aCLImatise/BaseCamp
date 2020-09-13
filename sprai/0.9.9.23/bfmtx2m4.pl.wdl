version 1.0

task Bfmtx2m4pl {
  input {
    String this
    Int m_four_dot_pre
    String all_norm_dot_fa
  }
  command <<<
    bfmtx2m4_pl \
      ~{this} \
      ~{m_four_dot_pre} \
      ~{all_norm_dot_fa}
  >>>
  parameter_meta {
    this: ""
    m_four_dot_pre: ""
    all_norm_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}