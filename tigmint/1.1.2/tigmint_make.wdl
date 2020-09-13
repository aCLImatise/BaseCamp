version 1.0

task Tigmintmake {
  command <<<
    tigmint_make
  >>>
  output {
    File out_stdout = stdout()
  }
}