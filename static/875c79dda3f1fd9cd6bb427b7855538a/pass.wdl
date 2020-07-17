version 1.0

task Pass {
  input {
    String? range
    Boolean? tags
    String? lib_type
    String? _resulttxt
  }
  command <<<
    pass \
      ~{if defined(range) then ("-range " +  '"' + range + '"') else ""} \
      ~{true="-tags" false="" tags} \
      ~{if defined(lib_type) then ("-lib_type " +  '"' + lib_type + '"') else ""} \
      ~{if defined(_resulttxt) then ("-d " +  '"' + _resulttxt + '"') else ""}
  >>>
  parameter_meta {
    range: "600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \ "
    tags: "/1 /2 > paired_alignments.sam "
    lib_type: "F3  > paired_alignments.sam "
    _resulttxt: "[-phred64] > result.txt "
  }
}