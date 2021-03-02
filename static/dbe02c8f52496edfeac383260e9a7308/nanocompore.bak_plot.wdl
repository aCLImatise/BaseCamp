version 1.0

task NanocomporebakPlot {
  input {
    String nano_compo_re_dot_bak
  }
  command <<<
    nanocompore_bak plot \
      ~{nano_compo_re_dot_bak}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nano_compo_re_dot_bak: ""
  }
  output {
    File out_stdout = stdout()
  }
}