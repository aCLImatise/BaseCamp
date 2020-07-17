version 1.0

task Nanocompore.bakPlot {
  input {
    String nano_compo_re_dot_bak
  }
  command <<<
    nanocompore.bak plot \
      ~{nano_compo_re_dot_bak}
  >>>
  parameter_meta {
    nano_compo_re_dot_bak: ""
  }
}