version 1.0

task Monofindrequires {
  command <<<
    mono_find_requires
  >>>
  output {
    File out_stdout = stdout()
  }
}