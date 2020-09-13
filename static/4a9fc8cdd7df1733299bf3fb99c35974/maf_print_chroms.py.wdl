version 1.0

task MafPrintChromspy {
  command <<<
    maf_print_chroms_py
  >>>
  output {
    File out_stdout = stdout()
  }
}