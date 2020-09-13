version 1.0

task MikadoUtil {
  command <<<
    mikado util
  >>>
  output {
    File out_stdout = stdout()
  }
}