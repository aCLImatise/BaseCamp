version 1.0

task CompareGff3ToChado {
  command <<<
    compare_gff3_to_chado
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  output {
    File out_stdout = stdout()
  }
}