version 1.0

task MakeLinkspy {
  command <<<
    make_links_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/salsa2:2.2--py27h78a066a_0"
  }
  output {
    File out_stdout = stdout()
  }
}