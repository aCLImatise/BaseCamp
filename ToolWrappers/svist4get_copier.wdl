version 1.0

task Svist4getCopier {
  command <<<
    svist4get_copier
  >>>
  output {
    File out_stdout = stdout()
  }
}