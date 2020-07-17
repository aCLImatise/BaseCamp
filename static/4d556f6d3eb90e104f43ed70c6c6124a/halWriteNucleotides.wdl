version 1.0

task HalWriteNucleotides {
  input {
    String in_file
    String tsv_file
  }
  command <<<
    halWriteNucleotides \
      ~{in_file} \
      ~{tsv_file}
  >>>
  parameter_meta {
    in_file: ""
    tsv_file: ""
  }
}