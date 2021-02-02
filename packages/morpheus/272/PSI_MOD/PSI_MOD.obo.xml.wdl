version 1.0

task PSIMODoboxml {
  command <<<
    PSI_MOD_obo_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}