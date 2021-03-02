version 1.0

task PSIMODoboxml {
  command <<<
    PSI_MOD_obo_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}