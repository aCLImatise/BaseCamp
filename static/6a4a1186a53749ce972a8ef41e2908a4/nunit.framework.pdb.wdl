version 1.0

task Nunitframeworkpdb {
  command <<<
    nunit_framework_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}