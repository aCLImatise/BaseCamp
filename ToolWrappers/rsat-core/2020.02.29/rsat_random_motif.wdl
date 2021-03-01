version 1.0

task RsatRandommotif {
  input {
    Boolean? verbosity_set_verbosity
    Boolean? _output_results
    Boolean? length_motif_length
    Boolean? conserv_motif_conservation
    Boolean? mutiplier_mutliply_cell
    Boolean? motifs_generate_motifs
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
      ~{if (verbosity_set_verbosity) then "-v" else ""} \
      ~{if (_output_results) then "-o" else ""} \
      ~{if (length_motif_length) then "-l" else ""} \
      ~{if (conserv_motif_conservation) then "-c" else ""} \
      ~{if (mutiplier_mutliply_cell) then "-m" else ""} \
      ~{if (motifs_generate_motifs) then "-n" else ""} \
      ~{if (round) then "--round" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity_set_verbosity: "#, --verbosity=#   set verbosity to level #\\n0 no verbosity\\n1 max verbosity"
    _output_results: "#, --output=#      output results to #\\nif not specified, the standard output is used"
    length_motif_length: "#, --length=#      motif length"
    conserv_motif_conservation: "#, --conserv=#     motif conservation (0.91 or low)"
    mutiplier_mutliply_cell: "#, --mutiplier=#   mutliply each cell by #"
    motifs_generate_motifs: "#, --motifs=#      generate # motifs (one by default)"
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