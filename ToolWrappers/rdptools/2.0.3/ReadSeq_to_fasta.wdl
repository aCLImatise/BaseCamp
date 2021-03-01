version 1.0

task ReadSeqTofasta {
  input {
    String? mask
    String usage
  }
  command <<<
    ReadSeq to_fasta \
      ~{usage} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mask: "Mask sequence name indicating columns to drop"
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}