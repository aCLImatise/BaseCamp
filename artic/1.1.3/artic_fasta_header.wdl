version 1.0

task ArticFastaHeader {
  input {
    File filename
    String header
  }
  command <<<
    artic_fasta_header \
      ~{filename} \
      ~{header}
  >>>
  parameter_meta {
    filename: ""
    header: ""
  }
}