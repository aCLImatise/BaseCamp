version 1.0

task Generatenamespl {
  command <<<
    generate_names_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}