version 1.0

task Maker2jbrowse {
  command <<<
    maker2jbrowse
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  output {
    File out_stdout = stdout()
  }
}