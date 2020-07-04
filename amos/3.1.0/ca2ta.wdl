version 1.0

task Ca2ta {
  input {
    Boolean? check
    Boolean? min_seq
    String? output_prefix
    Boolean? filter
    Boolean? no_qual
    Boolean? mates
  }
  command <<<
    ca2ta \
      ~{true="-check" false="" check} \
      ~{true="-minseq" false="" min_seq} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{true="-filter" false="" filter} \
      ~{true="-noqual" false="" no_qual} \
      ~{true="-mates" false="" mates}
  >>>
  parameter_meta {
    check: "Prints out those seqnames that are shorter than MINSEQ"
    min_seq: "sets MINSEQ.  Default is 64"
    output_prefix: "Output prefix"
    filter: "filters the .frg file for sequences shorter than MINSEQ"
    no_qual: "doesnt create .qual file"
    mates: "creates a .mates file indicating which sequences are mates"
  }
}