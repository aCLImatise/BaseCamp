version 1.0

task PfamScan.pl {
  input {
    String? fast_a
    Directory? dir
  }
  command <<<
    pfam_scan.pl \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    dir: ""
  }
}