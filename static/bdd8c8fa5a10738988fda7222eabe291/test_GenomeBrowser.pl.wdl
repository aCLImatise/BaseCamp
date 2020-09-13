version 1.0

task TestGenomeBrowserpl {
  command <<<
    test_GenomeBrowser_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}