version 1.0

task MegaReadsAssembleNomatchsh {
  input {
    File? a
    String? p
    File? m
    String mega_reads_assemble_dots_h
  }
  command <<<
    mega_reads_assemble_nomatch_sh \
      ~{mega_reads_assemble_dots_h} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a: ""
    p: ""
    m: ""
    mega_reads_assemble_dots_h: ""
  }
  output {
    File out_stdout = stdout()
  }
}