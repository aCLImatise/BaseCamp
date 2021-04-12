version 1.0

task Makebarcodesawk {
  command <<<
    make_barcodes_awk
  >>>
  runtime {
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  output {
    File out_stdout = stdout()
  }
}