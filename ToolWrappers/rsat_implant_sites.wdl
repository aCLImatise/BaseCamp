version 1.0

task RsatImplantsites {
  input {
    Boolean? _verbosity_set
    Boolean? _input_read
    Boolean? _output_output
    Boolean? _sites_read
    Boolean? _features_positions
    Boolean? noov
    String implant_sites
    Int author
    String motifs
    String random_motif
  }
  command <<<
    rsat implant_sites \
      ~{implant_sites} \
      ~{author} \
      ~{motifs} \
      ~{random_motif} \
      ~{if (_verbosity_set) then "-v" else ""} \
      ~{if (_input_read) then "-i" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (_sites_read) then "-s" else ""} \
      ~{if (_features_positions) then "-f" else ""} \
      ~{if (noov) then "--noov" else ""}
  >>>
  parameter_meta {
    _verbosity_set: "#, --verbosity=#   set verbosity to level #\\n0 no verbosity\\n1 max verbosity"
    _input_read: "#, --input=#       read sequence from # (must be in FASTA format)\\nif not specified, the standard input is used"
    _output_output: "#, --output=#      output results to #\\nif not specified, the standard output is used"
    _sites_read: "#, --sites=#       read sites from # (must be in FASTA format)"
    _features_positions: "#, --features=#    store site positions in #"
    noov: "do not allow overlapping sites"
    implant_sites: "VERSION"
    author: "AUTHOR"
    motifs: "sequences"
    random_motif: "random-sites"
  }
  output {
    File out_stdout = stdout()
  }
}