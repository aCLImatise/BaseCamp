version 1.0

task NOVOPlasty42pl {
  command <<<
    NOVOPlasty4_2_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/novoplasty:4.2--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}