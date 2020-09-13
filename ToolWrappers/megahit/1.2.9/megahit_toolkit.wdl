version 1.0

task MegahitToolkit {
  command <<<
    megahit_toolkit
  >>>
  output {
    File out_stdout = stdout()
  }
}