version 1.0

task Canudefaults {
  command <<<
    canu_defaults
  >>>
  output {
    File out_stdout = stdout()
  }
}