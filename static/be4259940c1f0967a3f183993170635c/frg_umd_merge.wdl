version 1.0

task Frgumdmerge {
  input {
    File frg_file
    File umd_seq_file
    File umd_qual_file
  }
  command <<<
    frg_umd_merge \
      ~{frg_file} \
      ~{umd_seq_file} \
      ~{umd_qual_file}
  >>>
  parameter_meta {
    frg_file: ""
    umd_seq_file: ""
    umd_qual_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}