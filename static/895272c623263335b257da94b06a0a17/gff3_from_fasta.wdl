version 1.0

task Gff3FromFasta {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    gff3_from_fasta \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}