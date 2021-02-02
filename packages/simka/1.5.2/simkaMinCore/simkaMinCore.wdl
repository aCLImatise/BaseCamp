version 1.0

task SimkaMinCore {
  command <<<
    simkaMinCore
  >>>
  output {
    File out_stdout = stdout()
  }
}