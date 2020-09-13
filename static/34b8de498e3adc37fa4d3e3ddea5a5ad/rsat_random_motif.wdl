version 1.0

task RsatRandommotif {
  input {
    Boolean? _verbosity_set
    Boolean? _output_output
    Boolean? _length_motif
    Boolean? _conserv_motif
    Boolean? _mutiplier_mutliply
    Boolean? _motifs_generate
    Boolean? round
    String random_motif
    Int author
    String motifs
    String random_sites
  }
  command <<<
    rsat random_motif \
      ~{random_motif} \
      ~{author} \
      ~{motifs} \
      ~{random_sites} \
      ~{if (_verbosity_set) then "-v" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (_length_motif) then "-l" else ""} \
      ~{if (_conserv_motif) then "-c" else ""} \
      ~{if (_mutiplier_mutliply) then "-m" else ""} \
      ~{if (_motifs_generate) then "-n" else ""} \
      ~{if (round) then "--round" else ""}
  >>>
  parameter_meta {
    _verbosity_set: "#, --verbosity=#   set verbosity to level #\\n0 no verbosity\\n1 max verbosity"
    _output_output: "#, --output=#      output results to #\\nif not specified, the standard output is used"
    _length_motif: "#, --length=#      motif length"
    _conserv_motif: "#, --conserv=#     motif conservation (0.91 or low)"
    _mutiplier_mutliply: "#, --mutiplier=#   mutliply each cell by #"
    _motifs_generate: "#, --motifs=#      generate # motifs (one by default)"
    round: "use integer values"
    random_motif: "VERSION"
    author: "AUTHOR"
    motifs: "USAGE"
    random_sites: "implant-sites"
  }
  output {
    File out_stdout = stdout()
  }
}