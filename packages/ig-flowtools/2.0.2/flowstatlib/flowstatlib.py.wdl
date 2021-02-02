version 1.0

task Flowstatlibpy {
  command <<<
    flowstatlib_py
  >>>
  output {
    File out_stdout = stdout()
  }
}