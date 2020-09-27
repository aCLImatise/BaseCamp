version 1.0

task BrackenbuildMYDB {
  command <<<
    bracken_build MY_DB
  >>>
  output {
    File out_stdout = stdout()
  }
}