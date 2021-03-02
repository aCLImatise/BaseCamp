version 1.0

task TestGenomeBrowserpl {
  command <<<
    test_GenomeBrowser_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}