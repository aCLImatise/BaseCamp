version 1.0

task ContigCmp {
  input {
    String a_file
    String b_file
  }
  command <<<
    contig-cmp \
      ~{a_file} \
      ~{b_file}
  >>>
  parameter_meta {
    a_file: ""
    b_file: ""
  }
}