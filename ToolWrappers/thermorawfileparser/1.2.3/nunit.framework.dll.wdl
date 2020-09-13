version 1.0

task Nunitframeworkdll {
  command <<<
    nunit_framework_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}