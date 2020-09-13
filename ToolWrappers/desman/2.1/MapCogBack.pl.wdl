version 1.0

task MapCogBackpl {
  command <<<
    MapCogBack_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}