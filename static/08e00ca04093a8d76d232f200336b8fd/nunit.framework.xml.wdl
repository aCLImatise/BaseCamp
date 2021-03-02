version 1.0

task Nunitframeworkxml {
  command <<<
    nunit_framework_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}