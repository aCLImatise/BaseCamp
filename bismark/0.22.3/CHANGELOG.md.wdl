version 1.0

task CHANGELOGmd {
  command <<<
    CHANGELOG_md
  >>>
  output {
    File out_stdout = stdout()
  }
}