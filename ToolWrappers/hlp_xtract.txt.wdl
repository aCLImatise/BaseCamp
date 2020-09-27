version 1.0

task Hlpxtracttxt {
  command <<<
    hlp_xtract_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}