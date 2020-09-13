version 1.0

task CallIntegrationssh {
  command <<<
    call_integrations_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}