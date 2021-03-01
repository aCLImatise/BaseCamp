version 1.0

task Gthcleanrecsh {
  command <<<
    gthcleanrec_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}