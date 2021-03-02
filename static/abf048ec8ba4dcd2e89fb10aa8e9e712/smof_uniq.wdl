version 1.0

task SmofUniq {
  input {
    Boolean? count
    Boolean? repeated
    Boolean? uniq
    Boolean? pack
    String? pack_sep
    Boolean? final_header
    String input_fasta_sequence
    String headers
  }
  command <<<
    smof uniq \
      ~{input_fasta_sequence} \
      ~{headers} \
      ~{if (count) then "--count" else ""} \
      ~{if (repeated) then "--repeated" else ""} \
      ~{if (uniq) then "--uniq" else ""} \
      ~{if (pack) then "--pack" else ""} \
      ~{if defined(pack_sep) then ("--pack-sep " +  '"' + pack_sep + '"') else ""} \
      ~{if (final_header) then "--final-header" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    count: "writes (count|header) in tab-delimited format"
    repeated: "print only repeated entries"
    uniq: "print only unique entries"
    pack: "combine redundant sequences by concatenating the"
    pack_sep: "set delimiting string for pack/unpack operations (SOH,\\n0x01, by default)"
    final_header: "make headers unique by deleting all but the final\\nentry with a given header (the sequence is ignored, so\\norder matters, you may want to sort by sequence first\\nfor reproducibility)\\n"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
    headers: "-P, --unpack          reverse the pack operation"
  }
  output {
    File out_stdout = stdout()
  }
}