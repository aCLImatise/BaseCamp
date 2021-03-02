version 1.0

task Nunitframeworkpdb {
  command <<<
    nunit_framework_pdb
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}