version 1.0

task RealPhyV112jar {
  command <<<
    RealPhy_v112_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}