version 1.0

task MegaReadsAssembleRef.sh {
  input {
    File? m
    String? r
    File? a
    String mega_reads_assemble_i_ref_dots_h
  }
  command <<<
    mega_reads_assemble_ref.sh \
      ~{mega_reads_assemble_i_ref_dots_h} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    r: ""
    a: ""
    mega_reads_assemble_i_ref_dots_h: ""
  }
}