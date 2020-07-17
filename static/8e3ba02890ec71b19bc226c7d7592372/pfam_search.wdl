version 1.0

task PfamSearch.pl {
  input {
    String? fast_a
    Directory? dir
    String pfam_scan_do_tpl
  }
  command <<<
    pfam_search.pl \
      ~{pfam_scan_do_tpl} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    dir: ""
    pfam_scan_do_tpl: ""
  }
}