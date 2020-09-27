class: CommandLineTool
id: predict_traits.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_trait_table
  doc: "the output filepath for trait predictions [default:\npredicted_states.tsv]"
  type: File
  inputBinding:
    prefix: --output_trait_table
- id: in_calculate_accuracy_metrics
  doc: "if specified, calculate accuracy metrics (i.e. how\naccurate does PICRUSt\
    \ expect its predictions to be?)\nand add to output file [default: False]"
  type: File
  inputBinding:
    prefix: --calculate_accuracy_metrics
- id: in_output_accuracy_metrics_only
  doc: "if specified, calculate accuracy metrics (e.g. NSTI),\noutput them to this\
    \ filepath, and do not do anything\nelse. [default: none]"
  type: File
  inputBinding:
    prefix: --output_accuracy_metrics_only
- id: in_prediction_method
  doc: "Specify prediction method to use.  The recommended\nprediction method is set\
    \ as default, so other options\nare primarily useful for control experiments and\n\
    methods validation, not typical use.  Valid choices ar\ne:asr_and_weighting,nearest_neighbor,asr_only,weightin\n\
    g_only,random_neighbor.\n\"asr_and_weighting\"(recommended): use ancestral state\n\
    reconstructions plus local weighting with known tip\nnodes.  \"nearest_neighbor\"\
    : predict the closest tip on\nthe tree with trait information.\n\"random_annotated_neighbor\"\
    : predict a random tip on\nthe tree with trait information. \"asr_only\": predict\n\
    the traits of the last reconstructed ancestor, without\nweighting. \"weighting_only\"\
    : weight all genomes by\ndistance, to the organism of interest using the\nspecified\
    \ weighting function and predict the weighted\naverage.   [default: asr_and_weighting]"
  type: string
  inputBinding:
    prefix: --prediction_method
- id: in_weighting_method
  doc: "Specify prediction the weighting function to use.\nThis only applies to prediction\
    \ methods that\nincorporate local weighting (\"asr_and_weighting\" or\n\"weighting_only\"\
    )  The recommended weighting  method\nis set as default, so other options are\
    \ primarily\nuseful for control experiments and methods validation,\nnot typical\
    \ use.  Valid choices\nare:exponential,linear,equal.\n\"exponential\"(recommended):\
    \ weight genomes as a\nnegative exponent of distance.  That is 2^-d, where d\n\
    is the tip-to-tip distance from the genome to the tip.\n\"linear\": weight tips\
    \ as a linear function of weight,\nnormalized to the maximum possible distance\
    \ (max_d\n-d)/d. \"equal_weights\": set all weights to a constant\n(ignoring branch\
    \ length).   [default: exponential]"
  type: long
  inputBinding:
    prefix: --weighting_method
- id: in_limit_predictions_by_otu_table
  doc: "Specify a valid path to a legacy QIIME OTU table to\nperform predictions only\
    \ for tips that are listed in\nthe OTU table (regardless of abundance)"
  type: File
  inputBinding:
    prefix: --limit_predictions_by_otu_table
- id: in_limit_predictions_to_organisms
  doc: "Limit predictions to specific, comma-separated\norganims ids. (Generally only\
    \ useful for lists of < 10\norganism ids, for example when performing leave-one-\n\
    out cross-validation)."
  type: long
  inputBinding:
    prefix: --limit_predictions_to_organisms
- id: in_reconstructed_trait_table
  doc: "the input trait table describing reconstructed traits\n(from ancestral_state_reconstruction.py)\
    \ in tab-\ndelimited format [default: none]"
  type: string
  inputBinding:
    prefix: --reconstructed_trait_table
- id: in_confidence_format
  doc: "the format for the confidence intervals from ancestral\nstate reconstruction.\
    \ Only needed if passing a\nreconstruction confidence file with -c or\n--reconstruction_confidence.\
    \  These are typically\nsigma values for maximum likelihood ASR  methods, but\n\
    95% confidence intervals for phylogenetic independent\ncontrasts (e.g. from the\
    \ ape R packages ace function\nwith pic as the reconstruction method).  Valid\
    \ choices\nare:sigma,confidence_interval. [default: sigma]"
  type: File
  inputBinding:
    prefix: --confidence_format
- id: in_reconstruction_confidence
  doc: "the input trait table describing confidence intervals\nfor reconstructed traits\
    \ (from\nancestral_state_reconstruction.py) in tab-delimited\nformat [default:\
    \ none]"
  type: string
  inputBinding:
    prefix: --reconstruction_confidence
- id: in_output_pre_calc_file_in_biom
  doc: "Instead of outputting the precalculated file in tab-\ndelimited format (with\
    \ otu ids as row ids and traits\nas columns) output the data in biom format (with\
    \ otu\nas SampleIds and traits as ObservationIds) [default:\nFalse]"
  type: File
  inputBinding:
    prefix: --output_precalc_file_in_biom
- id: in_no_round
  doc: "Flag to set if you do not want predictions to be\nrounded to the nearest integer\
    \ [default: False]"
  type: boolean
  inputBinding:
    prefix: --no_round
- id: in_observed_trait_table
  doc: "the input trait table describing directly observed\ntraits (e.g. sequenced\
    \ genomes) in tab-delimited\nformat [REQUIRED]"
  type: string
  inputBinding:
    prefix: --observed_trait_table
- id: in_tree
  doc: "the full reference tree, in Newick format [REQUIRED]\n"
  type: string
  inputBinding:
    prefix: --tree
- id: in_one_dot
  doc: For each terminal (tip) node where a prediction is to be performed, the algorithm
    through the reconstructed ancestral states, and finds the last node in the ancestry
    of our organism of interest for which a prediction is available
  type: long
  inputBinding:
    position: 0
- id: in_two_dot
  doc: The trait for the organism is then predicted based on a branch-length weighted
    average of the ancestral node and it's close relatives. (This is necessary because
    technical limitations involving the handling of ambiguous characters in many Ancestral
    State Reconstruction programs prevent the parent node of the organism from being
    directly reconstructed in most cases.)
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_trait_table
  doc: "the output filepath for trait predictions [default:\npredicted_states.tsv]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_trait_table)
- id: out_calculate_accuracy_metrics
  doc: "if specified, calculate accuracy metrics (i.e. how\naccurate does PICRUSt\
    \ expect its predictions to be?)\nand add to output file [default: False]"
  type: File
  outputBinding:
    glob: $(inputs.in_calculate_accuracy_metrics)
- id: out_output_accuracy_metrics_only
  doc: "if specified, calculate accuracy metrics (e.g. NSTI),\noutput them to this\
    \ filepath, and do not do anything\nelse. [default: none]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_accuracy_metrics_only)
- id: out_output_pre_calc_file_in_biom
  doc: "Instead of outputting the precalculated file in tab-\ndelimited format (with\
    \ otu ids as row ids and traits\nas columns) output the data in biom format (with\
    \ otu\nas SampleIds and traits as ObservationIds) [default:\nFalse]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_pre_calc_file_in_biom)
cwlVersion: v1.1
baseCommand:
- predict_traits.py
