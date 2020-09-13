version 1.0

task PKissProbs {
  input {
    File? read_energy_parameters
    Float? set_energy_range_sets
    Float? set_energy_range_kcalmolthis
    Int? set_minimal_length
    String? select_pseudoknot_strategythere
    Int? set_maximal_pseudoknot
    Float? set_penalty_htype
    Float? set_penalty_ktype
    Float? set_cutoff_filter
    File? outside_context_write
    Float? set_weight_covariance
    Float? set_penalty_noncompatible
    Int? fraction_aligned_bases
    Int? alignment_folding_distance
    Int? set_shape_level
    Int? allow_pairs_allow
    File? read_input_file
    Int? select_alignment_consensus
    Int? this_help
    File? reads_file_contains
    Float? var_20
    Float? b
    String? sets_type_chemical
    File? sets_type_normalization
  }
  command <<<
    pKiss_probs \
      ~{if defined(read_energy_parameters) then ("-P " +  '"' + read_energy_parameters + '"') else ""} \
      ~{if defined(set_energy_range_sets) then ("-c " +  '"' + set_energy_range_sets + '"') else ""} \
      ~{if defined(set_energy_range_kcalmolthis) then ("-e " +  '"' + set_energy_range_kcalmolthis + '"') else ""} \
      ~{if defined(set_minimal_length) then ("-z " +  '"' + set_minimal_length + '"') else ""} \
      ~{if defined(select_pseudoknot_strategythere) then ("-s " +  '"' + select_pseudoknot_strategythere + '"') else ""} \
      ~{if defined(set_maximal_pseudoknot) then ("-l " +  '"' + set_maximal_pseudoknot + '"') else ""} \
      ~{if defined(set_penalty_htype) then ("-x " +  '"' + set_penalty_htype + '"') else ""} \
      ~{if defined(set_penalty_ktype) then ("-y " +  '"' + set_penalty_ktype + '"') else ""} \
      ~{if defined(set_cutoff_filter) then ("-F " +  '"' + set_cutoff_filter + '"') else ""} \
      ~{if defined(outside_context_write) then ("-o " +  '"' + outside_context_write + '"') else ""} \
      ~{if defined(set_weight_covariance) then ("-C " +  '"' + set_weight_covariance + '"') else ""} \
      ~{if defined(set_penalty_noncompatible) then ("-n " +  '"' + set_penalty_noncompatible + '"') else ""} \
      ~{if defined(fraction_aligned_bases) then ("-m " +  '"' + fraction_aligned_bases + '"') else ""} \
      ~{if defined(alignment_folding_distance) then ("-R " +  '"' + alignment_folding_distance + '"') else ""} \
      ~{if defined(set_shape_level) then ("-q " +  '"' + set_shape_level + '"') else ""} \
      ~{if defined(allow_pairs_allow) then ("-u " +  '"' + allow_pairs_allow + '"') else ""} \
      ~{if defined(read_input_file) then ("-f " +  '"' + read_input_file + '"') else ""} \
      ~{if defined(select_alignment_consensus) then ("-a " +  '"' + select_alignment_consensus + '"') else ""} \
      ~{if defined(this_help) then ("-h " +  '"' + this_help + '"') else ""} \
      ~{if defined(reads_file_contains) then ("-S " +  '"' + reads_file_contains + '"') else ""} \
      ~{if defined(var_20) then ("-A " +  '"' + var_20 + '"') else ""} \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(sets_type_chemical) then ("-M " +  '"' + sets_type_chemical + '"') else ""} \
      ~{if defined(sets_type_normalization) then ("-N " +  '"' + sets_type_normalization + '"') else ""}
  >>>
  parameter_meta {
    read_energy_parameters: "Read energy parameters from paramfile, instead of using the default parameter\\nset. A sample parameter file should accompany your distribution.\\nSee the RNAlib (Vienna-Package) documentation for details on the file format."
    set_energy_range_sets: "Set energy range (%).\\nThis sets the energy range as percentage value of the minimum free energy.\\nFor example, when -c 5.0 is specified, and the minimum free energy is -10.0\\nkcal/mol, the energy range is set to -9.5 to -10.0 kcal/mol.\\nDefault is 10.0.\\n(If -e is set, -c will be ignored.)"
    set_energy_range_kcalmolthis: "Set energy range (kcal/mol).\\nThis sets the energy range as an absolute value of the minimum free energy.\\nFor example, when -e 10.0 is specified, and the minimum free energy is -10.0\\nkcal/mol, the energy range is set to 0.0 to -10.0 kcal/mol.\\nBy default, -c is set to 10.0.\\n(If -e is set, -c will be ignored.)"
    set_minimal_length: "Set minimal hairpin length for K-type pseudoknots\\nThe first heuristic step in computung kissing hairpins, is to find stable, non-\\ninterrupted helices. These helices must have a minimal length, i.e. number\\nof stacked base-pairs, of <int-value>. The higher the value, the faster the\\nprogram, but also the less accurate.\\nThis affects only the stems of both hairpins, not their kissing helix!\\nDefault is 2. Only positive numbers are allowed."
    select_pseudoknot_strategythere: "select pseudoknot strategy.\\nThere are four different strategies how to compute kissing hairpins (K-type pseudoknots).   We suggest A, see our paper for details.\\nIf you choose 'P' only H-type pseudoknots can be computed.\\nDefault is 'A', without ticks.\\nAvailable strategies are 'A','B','C','D' and 'P'."
    set_maximal_pseudoknot: "Set a maximal pseudoknot size.\\nTo speed up computation, you can limit the number of bases involved in a\\npseudoknot (and all it's loop regions) by giving <int-value>.\\nBy default, there is no limitation, i.e. -l is set to input length.\\nOnly positive numbers are allowed."
    set_penalty_htype: "Set init. energy penalty for an H-type pseudoknot [9.00]\\nThermodynamic energy parameters for pseudoknots have not been measured in a\\nwet lab, yet. Thus, you might want to set the penalty for opening a H-type\\npseudoknot yourself.\\nDefault is +9.00 kcal/mol."
    set_penalty_ktype: "Set init. energy penalty for an K-type pseudoknot [12.00]\\nThermodynamic energy parameters for pseudoknots have not been measured in a\\nwet lab, yet. Thus, you might want to set the penalty for opening a K-type\\npseudoknot yourself.\\nDefault is +12.00 kcal/mol."
    set_cutoff_filter: "Set probability cutoff filter [0.000001]\\nThis option sets a barrier for filtering out results with very low\\nprobabilities during calculation. The default value here is 0.000001,\\nwhich gives a significant speedup compared to a disabled filter. Note\\nthat this filter can have a slight influence on the overall results. To\\ndisable this filter, use option -F 0.\\nFor use in outside context: mimics Viennas --bppmThreshold=<value> parameter\\nSet the threshold for base pair probabilities included in the postscript output (default=`1e-5')"
    outside_context_write: "for outside context: write dot-plot in <file>. Default is ./dotPlot.ps."
    set_weight_covariance: "Set the weight of the covariance term in the energy function [1.0]"
    set_penalty_noncompatible: "Set the penalty for non-compatible sequences in the covariance term of the energy function [1.0]"
    fraction_aligned_bases: "fraction of aligned bases in two columns that must be able to actually pair [-200]"
    alignment_folding_distance: "for alignment folding: 0 = use hamming distance for covariance\\ncalculation, 1 = use ribosum scoring matrix. The matrix is chosen according\\nto the minimal and maximal pairwise identities of the sequences in the\\nalignment. Default is [0]"
    set_shape_level: "Set shape abstraction level [5]"
    allow_pairs_allow: "1 = allow lonely base pairs, 0 = don't allow them [0]"
    read_input_file: "Read input from a file"
    select_alignment_consensus: "select alignment consensus representation for dot plots, aka. outside computation.\\n0 = consensus, 1 = most informative sequence"
    this_help: "this help.\\n(-[drk] [0-9]+)*"
    reads_file_contains: "reads a file that contains chemical probing results to 'constrain' the prediction.\\nThe file must contain two tabular separated columns.\\nThe first addresses the affected base by an index starting at 1.\\nThe second holds the measured reactivity value as a float number."
    var_20: "sets the 'slope' for the RNAstructure inspired formula\\nof how to combine free energies and reactivities [1.8]"
    b: "sets the 'intercept' for the RNAstructure inspired formula\\nof how to combine free energies and reactivities [-0.6]"
    sets_type_chemical: "sets the type of the chemical modifier used to probe the structure.\\nvalid types are 'DMS', 'CMCT', 'SHAPE', 'diffSHAPE', 'unknown' [unknown]."
    sets_type_normalization: "sets the type of normalization when reading the pure reactivity values from the file.\\nvalid types are 'centroid', 'RNAstructure', 'logplain', 'asProbabilities' [centroid].\\n"
  }
  output {
    File out_stdout = stdout()
  }
}