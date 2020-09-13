version 1.0

task Byobuexport {
  command <<<
    byobu_export
  >>>
  output {
    File out_stdout = stdout()
  }
}