version 1.0

task RsatRandomsites {
  input {
    Boolean? verbosity_set_verbosity
    Boolean? _output_results
    Boolean? _motif_read
    Boolean? number_sites_generate
    String random_sites
    Int author
    String pssm
    String implant_sites
  }
  command <<<
    rsat random_sites \
      ~{random_sites} \
      ~{author} \
      ~{pssm} \
      ~{implant_sites} \
      ~{if (verbosity_set_verbosity) then "-v" else ""} \
      ~{if (_output_results) then "-o" else ""} \
      ~{if (_motif_read) then "-m" else ""} \
      ~{if (number_sites_generate) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity_set_verbosity: "#, --verbosity=#   set verbosity to level #\\n0 no verbosity\\n1 max verbosity"
    _output_results: "#, --output=#      output results to #\\nif not specified, the standard output is used"
    _motif_read: "#, --motif=#       read motif(s) from #\\nif not specified, the standard input is used"
    number_sites_generate: "#                  number of sites to generate"
    random_sites: "VERSION"
    author: "AUTHOR"
    pssm: "motifs"
    implant_sites: "random-motif"
  }
  output {
    File out_stdout = stdout()
  }
}