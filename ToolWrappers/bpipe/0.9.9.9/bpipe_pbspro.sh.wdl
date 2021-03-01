version 1.0

task Bpipepbsprosh {
  command <<<
    bpipe_pbspro_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}