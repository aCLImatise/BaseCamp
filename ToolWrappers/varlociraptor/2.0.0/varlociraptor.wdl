version 1.0

task Varlociraptor {
  command <<<
    varlociraptor
  >>>
  output {
    File out_stdout = stdout()
  }
}