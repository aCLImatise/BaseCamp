version 1.0

task Nunitframeworkdll {
  command <<<
    nunit_framework_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}