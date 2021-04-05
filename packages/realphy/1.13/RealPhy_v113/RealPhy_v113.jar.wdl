version 1.0

task RealPhyV113jar {
  command <<<
    RealPhy_v113_jar
  >>>
  runtime {
    docker: "quay.io/biocontainers/realphy:1.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}