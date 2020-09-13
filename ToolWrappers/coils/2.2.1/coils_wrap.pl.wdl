version 1.0

task Coilswrappl {
  command <<<
    coils_wrap_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}