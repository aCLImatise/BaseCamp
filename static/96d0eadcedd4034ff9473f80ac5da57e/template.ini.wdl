version 1.0

task Templateini {
  command <<<
    template_ini
  >>>
  runtime {
    docker: "quay.io/biocontainers/parsnp:1.5.4--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}