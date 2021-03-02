version 1.0

task CHANGELOGmd {
  command <<<
    CHANGELOG_md
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}