version 1.0

task SystemSecurityAccessControlxml {
  command <<<
    System_Security_AccessControl_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1"
  }
  output {
    File out_stdout = stdout()
  }
}