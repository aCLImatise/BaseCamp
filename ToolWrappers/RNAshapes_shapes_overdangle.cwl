class: CommandLineTool
id: RNAshapes_shapes_overdangle.cwl
inputs:
- id: in_read_energy_parameters
  doc: "Read energy parameters from paramfile, instead of using the default parameter\n\
    set. A sample parameter file should accompany your distribution.\nSee the RNAlib\
    \ (Vienna-Package) documentation for details on the file format."
  type: File
  inputBinding:
    prefix: -P
- id: in_set_energy_range_sets
  doc: "Set energy range (%).\nThis sets the energy range as percentage value of the\
    \ minimum free energy.\nFor example, when -c 5.0 is specified, and the minimum\
    \ free energy is -10.0\nkcal/mol, the energy range is set to -9.5 to -10.0 kcal/mol.\n\
    Default is 10.0.\n(If -e is set, -c will be ignored.)"
  type: double
  inputBinding:
    prefix: -c
- id: in_set_energy_range_kcalmolthis
  doc: "Set energy range (kcal/mol).\nThis sets the energy range as an absolute value\
    \ of the minimum free energy.\nFor example, when -e 10.0 is specified, and the\
    \ minimum free energy is -10.0\nkcal/mol, the energy range is set to 0.0 to -10.0\
    \ kcal/mol.\nBy default, -c is set to 10.0.\n(If -e is set, -c will be ignored.)"
  type: double
  inputBinding:
    prefix: -e
- id: in_set_minimal_length
  doc: "Set minimal hairpin length for K-type pseudoknots\nThe first heuristic step\
    \ in computung kissing hairpins, is to find stable, non-\ninterrupted helices.\
    \ These helices must have a minimal length, i.e. number\nof stacked base-pairs,\
    \ of <int-value>. The higher the value, the faster the\nprogram, but also the\
    \ less accurate.\nThis affects only the stems of both hairpins, not their kissing\
    \ helix!\nDefault is 2. Only positive numbers are allowed."
  type: long
  inputBinding:
    prefix: -z
- id: in_select_pseudoknot_strategythere
  doc: "select pseudoknot strategy.\nThere are four different strategies how to compute\
    \ kissing hairpins (K-type pseudoknots).   We suggest A, see our paper for details.\n\
    If you choose 'P' only H-type pseudoknots can be computed.\nDefault is 'A', without\
    \ ticks.\nAvailable strategies are 'A','B','C','D' and 'P'."
  type: string
  inputBinding:
    prefix: -s
- id: in_set_maximal_pseudoknot
  doc: "Set a maximal pseudoknot size.\nTo speed up computation, you can limit the\
    \ number of bases involved in a\npseudoknot (and all it's loop regions) by giving\
    \ <int-value>.\nBy default, there is no limitation, i.e. -l is set to input length.\n\
    Only positive numbers are allowed."
  type: long
  inputBinding:
    prefix: -l
- id: in_set_penalty_htype
  doc: "Set init. energy penalty for an H-type pseudoknot [9.00]\nThermodynamic energy\
    \ parameters for pseudoknots have not been measured in a\nwet lab, yet. Thus,\
    \ you might want to set the penalty for opening a H-type\npseudoknot yourself.\n\
    Default is +9.00 kcal/mol."
  type: double
  inputBinding:
    prefix: -x
- id: in_set_penalty_ktype
  doc: "Set init. energy penalty for an K-type pseudoknot [12.00]\nThermodynamic energy\
    \ parameters for pseudoknots have not been measured in a\nwet lab, yet. Thus,\
    \ you might want to set the penalty for opening a K-type\npseudoknot yourself.\n\
    Default is +12.00 kcal/mol."
  type: double
  inputBinding:
    prefix: -y
- id: in_set_cutoff_filter
  doc: "Set probability cutoff filter [0.000001]\nThis option sets a barrier for filtering\
    \ out results with very low\nprobabilities during calculation. The default value\
    \ here is 0.000001,\nwhich gives a significant speedup compared to a disabled\
    \ filter. Note\nthat this filter can have a slight influence on the overall results.\
    \ To\ndisable this filter, use option -F 0.\nFor use in outside context: mimics\
    \ Viennas --bppmThreshold=<value> parameter\nSet the threshold for base pair probabilities\
    \ included in the postscript output (default=`1e-5')"
  type: double
  inputBinding:
    prefix: -F
- id: in_outside_context_write
  doc: 'for outside context: write dot-plot in <file>. Default is ./dotPlot.ps.'
  type: File
  inputBinding:
    prefix: -o
- id: in_set_weight_covariance
  doc: Set the weight of the covariance term in the energy function [1.0]
  type: double
  inputBinding:
    prefix: -C
- id: in_set_penalty_noncompatible
  doc: Set the penalty for non-compatible sequences in the covariance term of the
    energy function [1.0]
  type: double
  inputBinding:
    prefix: -n
- id: in_fraction_aligned_bases
  doc: fraction of aligned bases in two columns that must be able to actually pair
    [-200]
  type: long
  inputBinding:
    prefix: -m
- id: in_alignment_folding_distance
  doc: "for alignment folding: 0 = use hamming distance for covariance\ncalculation,\
    \ 1 = use ribosum scoring matrix. The matrix is chosen according\nto the minimal\
    \ and maximal pairwise identities of the sequences in the\nalignment. Default\
    \ is [0]"
  type: long
  inputBinding:
    prefix: -R
- id: in_set_shape_level
  doc: Set shape abstraction level [5]
  type: long
  inputBinding:
    prefix: -q
- id: in_allow_pairs_allow
  doc: 1 = allow lonely base pairs, 0 = don't allow them [0]
  type: long
  inputBinding:
    prefix: -u
- id: in_read_input_file
  doc: Read input from a file
  type: File
  inputBinding:
    prefix: -f
- id: in_select_alignment_consensus
  doc: "select alignment consensus representation for dot plots, aka. outside computation.\n\
    0 = consensus, 1 = most informative sequence"
  type: long
  inputBinding:
    prefix: -a
- id: in_this_help
  doc: "this help.\n(-[drk] [0-9]+)*"
  type: long
  inputBinding:
    prefix: -h
- id: in_reads_file_contains
  doc: "reads a file that contains chemical probing results to 'constrain' the prediction.\n\
    The file must contain two tabular separated columns.\nThe first addresses the\
    \ affected base by an index starting at 1.\nThe second holds the measured reactivity\
    \ value as a float number."
  type: File
  inputBinding:
    prefix: -S
- id: in_var_20
  doc: "sets the 'slope' for the RNAstructure inspired formula\nof how to combine\
    \ free energies and reactivities [1.8]"
  type: double
  inputBinding:
    prefix: -A
- id: in_b
  doc: "sets the 'intercept' for the RNAstructure inspired formula\nof how to combine\
    \ free energies and reactivities [-0.6]"
  type: double
  inputBinding:
    prefix: -B
- id: in_sets_type_chemical
  doc: "sets the type of the chemical modifier used to probe the structure.\nvalid\
    \ types are 'DMS', 'CMCT', 'SHAPE', 'diffSHAPE', 'unknown' [unknown]."
  type: string
  inputBinding:
    prefix: -M
- id: in_sets_type_normalization
  doc: "sets the type of normalization when reading the pure reactivity values from\
    \ the file.\nvalid types are 'centroid', 'RNAstructure', 'logplain', 'asProbabilities'\
    \ [centroid].\n"
  type: File
  inputBinding:
    prefix: -N
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAshapes_shapes_overdangle
