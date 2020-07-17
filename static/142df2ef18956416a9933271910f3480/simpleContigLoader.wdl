version 1.0

task SimpleContigLoader {
  input {
    String bank_path
    String contig_file
  }
  command <<<
    simpleContigLoader \
      ~{bank_path} \
      ~{contig_file}
  >>>
  parameter_meta {
    bank_path: ""
    contig_file: ""
  }
}