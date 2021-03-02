version 1.0

task Addjsonpl {
  command <<<
    add_json_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}