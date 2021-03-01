version 1.0

task CallIntegrationssh {
  command <<<
    call_integrations_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}