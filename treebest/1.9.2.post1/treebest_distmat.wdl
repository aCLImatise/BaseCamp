version 1.0

task TreebestDistmat {
  input {
    String dn_vertical_line_ds_vertical_line_dm_vertical_line_jtt_vertical_line_kimura_vertical_line_mm_vertical_line_dns
    String alignment
  }
  command <<<
    treebest distmat \
      ~{dn_vertical_line_ds_vertical_line_dm_vertical_line_jtt_vertical_line_kimura_vertical_line_mm_vertical_line_dns} \
      ~{alignment}
  >>>
  parameter_meta {
    dn_vertical_line_ds_vertical_line_dm_vertical_line_jtt_vertical_line_kimura_vertical_line_mm_vertical_line_dns: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}