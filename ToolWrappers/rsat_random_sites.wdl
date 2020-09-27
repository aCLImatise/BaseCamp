version 1.0

task RsatRandomsites {
  input {
    Boolean? _verbosity_set
    Boolean? _output_output
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
      ~{if (_verbosity_set) then "-v" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (_motif_read) then "-m" else ""} \
      ~{if (number_sites_generate) then "-n" else ""}
  >>>
  parameter_meta {
    _verbosity_set: "#, --verbosity=#   set verbosity to level #\\n0 no verbosity\\n1 max verbosity"
    _output_output: "#, --output=#      output results to #\\nif not specified, the standard output is used"
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