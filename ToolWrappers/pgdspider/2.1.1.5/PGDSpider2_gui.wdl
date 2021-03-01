version 1.0

task PGDSpider2gui {
  command <<<
    PGDSpider2_gui
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgdspider:2.1.1.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}