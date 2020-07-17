version 1.0

task SmofUniq {
  input {
    Boolean? count
    Boolean? repeated
    Boolean? uniq
    Boolean? pack
    Boolean? unpack
    String? pack_sep
    Boolean? final_header
    String input_fasta_sequence
  }
  command <<<
    smof uniq \
      ~{input_fasta_sequence} \
      ~{true="--count" false="" count} \
      ~{true="--repeated" false="" repeated} \
      ~{true="--uniq" false="" uniq} \
      ~{true="--pack" false="" pack} \
      ~{true="--unpack" false="" unpack} \
      ~{if defined(pack_sep) then ("--pack-sep " +  '"' + pack_sep + '"') else ""} \
      ~{true="--final-header" false="" final_header}
  >>>
  parameter_meta {
    count: "writes (count|header) in tab-delimited format"
    repeated: "print only repeated entries"
    uniq: "print only unique entries"
    pack: "combine redundant sequences by concatenating the headers"
    unpack: "reverse the pack operation"
    pack_sep: "set delimiting string for pack/unpack operations (SOH, 0x01, by default)"
    final_header: "make headers unique by deleting all but the final entry with a given header (the sequence is ignored, so order matters, you may want to sort by sequence first for reproducibility)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}