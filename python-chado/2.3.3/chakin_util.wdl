version 1.0

task ChakinUtil {
  command <<<
    chakin util
  >>>
  output {
    File out_stdout = stdout()
  }
}