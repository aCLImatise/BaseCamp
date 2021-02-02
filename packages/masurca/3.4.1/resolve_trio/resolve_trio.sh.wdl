version 1.0

task ResolveTriosh {
  command <<<
    resolve_trio_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}