version 1.0

task MegaReadsAssembleRefsh {
  input {
    File? a
    String? r
    File? m
    String mega_reads_assemble_i_ref_dots_h
  }
  command <<<
    mega_reads_assemble_ref_sh \
      ~{mega_reads_assemble_i_ref_dots_h} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    r: ""
    m: ""
    mega_reads_assemble_i_ref_dots_h: ""
  }
  output {
    File out_stdout = stdout()
  }
}