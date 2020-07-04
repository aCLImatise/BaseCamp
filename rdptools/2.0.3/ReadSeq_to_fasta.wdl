version 1.0

task ReadSeqToFasta {
  input {
    String? mask
    String usage
  }
  command <<<
    ReadSeq to-fasta \
      ~{usage} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""}
  >>>
  parameter_meta {
    mask: "Mask sequence name indicating columns to drop"
    usage: ""
  }
}