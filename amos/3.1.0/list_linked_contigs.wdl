version 1.0

task ListLinkedContigs {
  input {
    String bank_path
  }
  command <<<
    list-linked-contigs \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}