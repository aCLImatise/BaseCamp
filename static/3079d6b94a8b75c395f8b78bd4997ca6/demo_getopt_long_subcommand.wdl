version 1.0

task Demogetoptlongsubcommand {
  command <<<
    demo_getopt_long_subcommand
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  output {
    File out_stdout = stdout()
  }
}