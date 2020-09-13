version 1.0

task NanocomporePlot {
  input {
    String nano_compo_re
  }
  command <<<
    nanocompore plot \
      ~{nano_compo_re}
  >>>
  parameter_meta {
    nano_compo_re: ""
  }
  output {
    File out_stdout = stdout()
  }
}