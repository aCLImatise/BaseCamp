version 1.0

task GbfalncutPERLREGEX {
  input {
    String gbf_aln_cut
    File genbank_file
    String perl_regex
  }
  command <<<
    gbfalncut PERL_REGEX \
      ~{gbf_aln_cut} \
      ~{genbank_file} \
      ~{perl_regex}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    gbf_aln_cut: ""
    genbank_file: ""
    perl_regex: ""
  }
  output {
    File out_stdout = stdout()
  }
}