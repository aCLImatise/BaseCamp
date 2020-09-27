version 1.0

task Nunitframeworkpdb {
  command <<<
    nunit_framework_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}