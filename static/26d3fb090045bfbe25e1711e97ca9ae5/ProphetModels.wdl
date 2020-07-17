version 1.0

task ProphetModels.pl {
  input {
    File? _specify_pepxml
    String? _specify_counted
    String? _specify_excluded
    String? _specify_decoy
    String? _specify_window
    Boolean? _delete_files
    Boolean? _make_probprob
    Boolean? unique_sequences_iprophet
    Boolean? unique_sequences_peptideprophet
    Boolean? unique_peptide_ions
    Boolean? _consider_probabilities
    Boolean? _provide_protein
    Boolean? _generate_plots
  }
  command <<<
    ProphetModels.pl \
      ~{if defined(_specify_pepxml) then ("-i " +  '"' + _specify_pepxml + '"') else ""} \
      ~{if defined(_specify_counted) then ("-d " +  '"' + _specify_counted + '"') else ""} \
      ~{if defined(_specify_excluded) then ("-x " +  '"' + _specify_excluded + '"') else ""} \
      ~{if defined(_specify_decoy) then ("-r " +  '"' + _specify_decoy + '"') else ""} \
      ~{if defined(_specify_window) then ("-w " +  '"' + _specify_window + '"') else ""} \
      ~{true="-k" false="" _delete_files} \
      ~{true="-M" false="" _make_probprob} \
      ~{true="-u" false="" unique_sequences_iprophet} \
      ~{true="-q" false="" unique_sequences_peptideprophet} \
      ~{true="-n" false="" unique_peptide_ions} \
      ~{true="-T" false="" _consider_probabilities} \
      ~{true="-P" false="" _provide_protein} \
      ~{true="-G" false="" _generate_plots}
  >>>
  parameter_meta {
    _specify_pepxml: "-- Specify pepXML file to be processed."
    _specify_counted: "-- Specify protein prefix indicating decoy to be counted."
    _specify_excluded: "-- Specify protein prefix indicating decoy to be excluded."
    _specify_decoy: "-- Specify decoy ratio. Will guess from P<0.001 hits if not specified."
    _specify_window: "-- Specify window for Prob/Prob plot. Default 100"
    _delete_files: "-- Don't delete intermediate files."
    _make_probprob: "-- Make Prob/Prob and Corr/Corr plots."
    unique_sequences_iprophet: "-- Consider only top probabilities of unique peptide sequences for iProphet."
    unique_sequences_peptideprophet: "-- Consider only top probabilities of unique peptide sequences for PeptideProphet."
    unique_peptide_ions: "-- Consider only top probabilities of unique peptide ions for PeptideProphet."
    _consider_probabilities: "-- Consider only top probabilities for each PSMs"
    _provide_protein: "-- Provide simplistic protein ROC plot. Only uniquely-mapped proteins counted with prob = max prob of mapping peptides."
    _generate_plots: "-- Generate plots using Gnuplot, as opposed to inserting analysis data into source pepXML file."
  }
}