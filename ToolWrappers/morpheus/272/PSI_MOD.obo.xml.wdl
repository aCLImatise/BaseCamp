version 1.0

task PSIMODoboxml {
  command <<<
    PSI_MOD_obo_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}