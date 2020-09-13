version 1.0

task Bamadapterfind {
  command <<<
    bamadapterfind
  >>>
  output {
    File out_stdout = stdout()
  }
}