version 1.0

task Dreamtoolslayout {
  command <<<
    dreamtools_layout
  >>>
  output {
    File out_stdout = stdout()
  }
}