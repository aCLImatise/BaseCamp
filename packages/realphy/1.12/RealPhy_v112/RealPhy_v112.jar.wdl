version 1.0

task RealPhyV112jar {
  command <<<
    RealPhy_v112_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}