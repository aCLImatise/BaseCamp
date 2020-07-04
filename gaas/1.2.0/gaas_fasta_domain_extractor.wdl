version 1.0

task GaasFastaDomainExtractor.pl {
  input {
    String? i
    String? s
    String? e
    String? o
    String? n
    String fast_a_domain_extractor_do_tpl
  }
  command <<<
    gaas_fasta_domain_extractor.pl \
      ~{fast_a_domain_extractor_do_tpl} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    s: ""
    e: ""
    o: ""
    n: ""
    fast_a_domain_extractor_do_tpl: ""
  }
}