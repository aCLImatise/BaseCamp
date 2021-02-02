version 1.0

task Abysstabtomd {
  command <<<
    abyss_tabtomd
  >>>
  output {
    File out_stdout = stdout()
  }
}