version 1.0

task Srf2fasta {
  input {
    Boolean? c
    String archive_name
  }
  command <<<
    srf2fasta \
      ~{archive_name} \
      ~{true="-C" false="" c}
  >>>
  parameter_meta {
    c: ""
    archive_name: ""
  }
}