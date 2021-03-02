version 1.0

task NOVOPlastypl {
  command <<<
    NOVOPlasty_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/novoplasty:4.2--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}