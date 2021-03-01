version 1.0

task Zff2genbankpl {
  input {
    String export_dot_ann
  }
  command <<<
    zff2genbank_pl \
      ~{export_dot_ann}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    export_dot_ann: ""
  }
  output {
    File out_stdout = stdout()
  }
}