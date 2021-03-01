version 1.0

task Licensetxt {
  command <<<
    license_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}