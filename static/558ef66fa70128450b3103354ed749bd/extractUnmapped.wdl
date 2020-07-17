version 1.0

task ExtractUnmapped {
  input {
    Boolean? extract_unmapped_sequence_a
    Boolean? extract_unmapped_sequence_b
    Boolean? ar
    Boolean? br
    Boolean? mask_tandem_repeats
    String? op
    String? m
  }
  command <<<
    extractUnmapped \
      ~{true="-a" false="" extract_unmapped_sequence_a} \
      ~{true="-b" false="" extract_unmapped_sequence_b} \
      ~{true="-ar" false="" ar} \
      ~{true="-br" false="" br} \
      ~{true="-t" false="" mask_tandem_repeats} \
      ~{if defined(op) then ("-OP " +  '"' + op + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    extract_unmapped_sequence_a: "extract all unmapped sequence in A"
    extract_unmapped_sequence_b: "extract all unmapped sequence in B"
    ar: "extract within run unmapped sequence in A"
    br: "extract within run unmapped sequence in B BOTH -ar and -br need to be specified!"
    mask_tandem_repeats: "mask out tandem repeats listed in trfile"
    op: ""
    m: ""
  }
}