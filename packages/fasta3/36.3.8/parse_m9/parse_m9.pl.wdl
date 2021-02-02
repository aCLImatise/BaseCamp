version 1.0

task ParseM9pl {
  command <<<
    parse_m9_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}