version 1.0

task SmofUniq {
  input {
    Boolean? count
    Boolean? repeated
    Boolean? uniq
    Boolean? pack
    String? pack_sep
    Boolean? first_header
    File? removed
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
      ~{if (first_header) then "--first-header" else ""} \
      ~{if defined(removed) then ("--removed " +  '"' + removed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    count: "writes (count|header) in tab-delimited format"
    repeated: "print only repeated entries"
    uniq: "print only unique entries"
    pack: "combine redundant sequences by concatenating the"
    pack_sep: "set delimiting string for pack/unpack operations (SOH,\\n0x01, by default)"
    first_header: "remove entries with duplicate headers (keep only the\\nfirst)"
    removed: "With -f, store removed sequences in FILE"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
    headers: "-P, --unpack          reverse the pack operation"
  }
  output {
    File out_stdout = stdout()
  }
}