version 1.0

task Mirainstallslsrrnash {
  command <<<
    mira_install_sls_rrna_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}