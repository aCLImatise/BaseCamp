version 1.0

task IprUpdateGff {
  input {
    String in_place
  }
  command <<<
    ipr_update_gff \
      ~{in_place}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    in_place: "Modify GFF3 files inplace, otherwise it prints to STDOUT"
  }
  output {
    File out_stdout = stdout()
  }
}