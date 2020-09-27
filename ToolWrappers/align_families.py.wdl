version 1.0

task Alignfamiliespy {
  input {
    String read_families_dot_tsv
  }
  command <<<
    align_families_py \
      ~{read_families_dot_tsv}
  >>>
  parameter_meta {
    read_families_dot_tsv: "The input reads, sorted into families. One\\nline per read pair, 8 tab-delimited columns:\\n1. canonical barcode\\n2. barcode order (\\\"ab\\\" for alpha+beta, \\\"ba\\\"\\nfor beta-alpha)\\n3. read 1 name\\n4. read 1 sequence\\n5. read 1 quality scores\\n6. read 2 name\\n7. read 2 sequence\\n8. read 2 quality scores"
  }
  output {
    File out_stdout = stdout()
  }
}