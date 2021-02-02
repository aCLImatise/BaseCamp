version 1.0

task MockinbirdFlipMate {
  command <<<
    mockinbird flip_mate
  >>>
  output {
    File out_stdout = stdout()
  }
}