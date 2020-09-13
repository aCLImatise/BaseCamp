version 1.0

task Byobulayout {
  command <<<
    byobu_layout
  >>>
  output {
    File out_stdout = stdout()
  }
}