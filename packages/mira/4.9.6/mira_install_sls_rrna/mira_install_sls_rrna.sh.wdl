version 1.0

task Mirainstallslsrrnash {
  command <<<
    mira_install_sls_rrna_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}