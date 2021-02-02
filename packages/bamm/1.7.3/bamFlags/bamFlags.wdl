version 1.0

task BamFlags {
  command <<<
    bamFlags
  >>>
  output {
    File out_stdout = stdout()
  }
}