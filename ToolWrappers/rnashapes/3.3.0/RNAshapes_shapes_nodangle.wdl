version 1.0

task RNAshapesShapesNodangle {
  input {
    File? read_energy_parameters
    Float? set_energy_range_sets_energy_range_percentage
    Float? set_energy_range_sets_energy_range_absolute
    Int? set_minimal_length
    String? select_pseudoknot_strategythere
    Int? set_maximal_pseudoknot
    Float? set_init_htype
    Float? set_init_ktype
    Float? set_probability_filter
    File? outside_context_write
    Float? set_weight_covariance
    Float? set_penalty_noncompatible
    Int? fraction_aligned_bases
    Int? alignment_folding_use
    Int? set_shape_abstraction
    Int? allow_base_pairs
    File? read_input_file
    Int? select_alignment_consensus
    Int? this_help
    File? reads_file_contains
    Float? var_20
    Float? b
    String? sets_type_used
    File? sets_type_reading
  }
  command <<<
    RNAshapes_shapes_nodangle \
      ~{if defined(read_energy_parameters) then ("-P " +  '"' + read_energy_parameters + '"') else ""} \
      ~{if defined(set_energy_range_sets_energy_range_percentage) then ("-c " +  '"' + set_energy_range_sets_energy_range_percentage + '"') else ""} \
      ~{if defined(set_energy_range_sets_energy_range_absolute) then ("-e " +  '"' + set_energy_range_sets_energy_range_absolute + '"') else ""} \
      ~{if defined(set_minimal_length) then ("-z " +  '"' + set_minimal_length + '"') else ""} \
      ~{if defined(select_pseudoknot_strategythere) then ("-s " +  '"' + select_pseudoknot_strategythere + '"') else ""} \
      ~{if defined(set_maximal_pseudoknot) then ("-l " +  '"' + set_maximal_pseudoknot + '"') else ""} \
      ~{if defined(set_init_htype) then ("-x " +  '"' + set_init_htype + '"') else ""} \
      ~{if defined(set_init_ktype) then ("-y " +  '"' + set_init_ktype + '"') else ""} \
      ~{if defined(set_probability_filter) then ("-F " +  '"' + set_probability_filter + '"') else ""} \
      ~{if defined(outside_context_write) then ("-o " +  '"' + outside_context_write + '"') else ""} \
      ~{if defined(set_weight_covariance) then ("-C " +  '"' + set_weight_covariance + '"') else ""} \
      ~{if defined(set_penalty_noncompatible) then ("-n " +  '"' + set_penalty_noncompatible + '"') else ""} \
      ~{if defined(fraction_aligned_bases) then ("-m " +  '"' + fraction_aligned_bases + '"') else ""} \
      ~{if defined(alignment_folding_use) then ("-R " +  '"' + alignment_folding_use + '"') else ""} \
      ~{if defined(set_shape_abstraction) then ("-q " +  '"' + set_shape_abstraction + '"') else ""} \
      ~{if defined(allow_base_pairs) then ("-u " +  '"' + allow_base_pairs + '"') else ""} \
      ~{if defined(read_input_file) then ("-f " +  '"' + read_input_file + '"') else ""} \
      ~{if defined(select_alignment_consensus) then ("-a " +  '"' + select_alignment_consensus + '"') else ""} \
      ~{if defined(this_help) then ("-h " +  '"' + this_help + '"') else ""} \
      ~{if defined(reads_file_contains) then ("-S " +  '"' + reads_file_contains + '"') else ""} \
      ~{if defined(var_20) then ("-A " +  '"' + var_20 + '"') else ""} \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(sets_type_used) then ("-M " +  '"' + sets_type_used + '"') else ""} \
      ~{if defined(sets_type_reading) then ("-N " +  '"' + sets_type_reading + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_energy_parameters: "Read energy parameters from paramfile, instead of using the default parameter\\nset. A sample parameter file should accompany your distribution.\\nSee the RNAlib (Vienna-Package) documentation for details on the file format."
    set_energy_range_sets_energy_range_percentage: "Set energy range (%).\\nThis sets the energy range as percentage value of the minimum free energy.\\nFor example, when -c 5.0 is specified, and the minimum free energy is -10.0\\nkcal/mol, the energy range is set to -9.5 to -10.0 kcal/mol.\\nDefault is 10.0.\\n(If -e is set, -c will be ignored.)"
    set_energy_range_sets_energy_range_absolute: "Set energy range (kcal/mol).\\nThis sets the energy range as an absolute value of the minimum free energy.\\nFor example, when -e 10.0 is specified, and the minimum free energy is -10.0\\nkcal/mol, the energy range is set to 0.0 to -10.0 kcal/mol.\\nBy default, -c is set to 10.0.\\n(If -e is set, -c will be ignored.)"
    set_minimal_length: "Set minimal hairpin length for K-type pseudoknots\\nThe first heuristic step in computung kissing hairpins, is to find stable, non-\\ninterrupted helices. These helices must have a minimal length, i.e. number\\nof stacked base-pairs, of <int-value>. The higher the value, the faster the\\nprogram, but also the less accurate.\\nThis affects only the stems of both hairpins, not their kissing helix!\\nDefault is 2. Only positive numbers are allowed."
    select_pseudoknot_strategythere: "select pseudoknot strategy.\\nThere are four different strategies how to compute kissing hairpins (K-type pseudoknots).   We suggest A, see our paper for details.\\nIf you choose 'P' only H-type pseudoknots can be computed.\\nDefault is 'A', without ticks.\\nAvailable strategies are 'A','B','C','D' and 'P'."
    set_maximal_pseudoknot: "Set a maximal pseudoknot size.\\nTo speed up computation, you can limit the number of bases involved in a\\npseudoknot (and all it's loop regions) by giving <int-value>.\\nBy default, there is no limitation, i.e. -l is set to input length.\\nOnly positive numbers are allowed."
    set_init_htype: "Set init. energy penalty for an H-type pseudoknot [9.00]\\nThermodynamic energy parameters for pseudoknots have not been measured in a\\nwet lab, yet. Thus, you might want to set the penalty for opening a H-type\\npseudoknot yourself.\\nDefault is +9.00 kcal/mol."
    set_init_ktype: "Set init. energy penalty for an K-type pseudoknot [12.00]\\nThermodynamic energy parameters for pseudoknots have not been measured in a\\nwet lab, yet. Thus, you might want to set the penalty for opening a K-type\\npseudoknot yourself.\\nDefault is +12.00 kcal/mol."
    set_probability_filter: "Set probability cutoff filter [0.000001]\\nThis option sets a barrier for filtering out results with very low\\nprobabilities during calculation. The default value here is 0.000001,\\nwhich gives a significant speedup compared to a disabled filter. Note\\nthat this filter can have a slight influence on the overall results. To\\ndisable this filter, use option -F 0.\\nFor use in outside context: mimics Viennas --bppmThreshold=<value> parameter\\nSet the threshold for base pair probabilities included in the postscript output (default=`1e-5')"
    outside_context_write: "for outside context: write dot-plot in <file>. Default is ./dotPlot.ps."
    set_weight_covariance: "Set the weight of the covariance term in the energy function [1.0]"
    set_penalty_noncompatible: "Set the penalty for non-compatible sequences in the covariance term of the energy function [1.0]"
    fraction_aligned_bases: "fraction of aligned bases in two columns that must be able to actually pair [-200]"
    alignment_folding_use: "for alignment folding: 0 = use hamming distance for covariance\\ncalculation, 1 = use ribosum scoring matrix. The matrix is chosen according\\nto the minimal and maximal pairwise identities of the sequences in the\\nalignment. Default is [0]"
    set_shape_abstraction: "Set shape abstraction level [5]"
    allow_base_pairs: "1 = allow lonely base pairs, 0 = don't allow them [0]"
    read_input_file: "Read input from a file"
    select_alignment_consensus: "select alignment consensus representation for dot plots, aka. outside computation.\\n0 = consensus, 1 = most informative sequence"
    this_help: "this help.\\n(-[drk] [0-9]+)*"
    reads_file_contains: "reads a file that contains chemical probing results to 'constrain' the prediction.\\nThe file must contain two tabular separated columns.\\nThe first addresses the affected base by an index starting at 1.\\nThe second holds the measured reactivity value as a float number."
    var_20: "sets the 'slope' for the RNAstructure inspired formula\\nof how to combine free energies and reactivities [1.8]"
    b: "sets the 'intercept' for the RNAstructure inspired formula\\nof how to combine free energies and reactivities [-0.6]"
    sets_type_used: "sets the type of the chemical modifier used to probe the structure.\\nvalid types are 'DMS', 'CMCT', 'SHAPE', 'diffSHAPE', 'unknown' [unknown]."
    sets_type_reading: "sets the type of normalization when reading the pure reactivity values from the file.\\nvalid types are 'centroid', 'RNAstructure', 'logplain', 'asProbabilities' [centroid].\\n"
  }
  output {
    File out_stdout = stdout()
  }
}