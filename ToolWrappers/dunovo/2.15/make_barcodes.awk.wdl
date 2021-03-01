version 1.0

task Makebarcodesawk {
  command <<<
    make_barcodes_awk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}