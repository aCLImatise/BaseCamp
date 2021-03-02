version 1.0

task TestsomaticR {
  command <<<
    testsomatic_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/vardict-java:1.8.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}