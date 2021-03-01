version 1.0

task Gthsplit2dimsh {
  command <<<
    gthsplit2dim_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}