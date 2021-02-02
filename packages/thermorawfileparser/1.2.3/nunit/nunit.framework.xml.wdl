version 1.0

task Nunitframeworkxml {
  command <<<
    nunit_framework_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}