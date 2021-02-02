version 1.0

task MegahitCore {
  command <<<
    megahit_core
  >>>
  output {
    File out_stdout = stdout()
  }
}