version 1.0

task CHANGELOGmd {
  command <<<
    CHANGELOG_md
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}