class: CommandLineTool
id: predict_metagenomes.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_type_of_prediction
  doc: "Type of functional predictions. Valid choices are: ko,\ncog, rfam [default:\
    \ ko]"
  type: string
  inputBinding:
    prefix: --type_of_prediction
- id: in_gg_version
  doc: "Version of GreenGenes that was used for OTU picking.\nValid choices are: 13_5,\
    \ 18may2012 [default: 13_5]"
  type: long
  inputBinding:
    prefix: --gg_version
- id: in_input_count_table
  doc: "Precalculated function predictions on per otu basis in\nbiom format (can be\
    \ gzipped). Note: using this option\noverrides --type_of_prediction and --gg_version.\n\
    [default: none]"
  type: string
  inputBinding:
    prefix: --input_count_table
- id: in_accuracy_metrics
  doc: "If provided, calculate accuracy metrics for the\npredicted metagenome.  NOTE:\
    \ requires that per-genome\naccuracy metrics were calculated using\npredict_traits.py\
    \ during genome prediction (e.g. there\nare \"NSTI\" values in the genome .biom\
    \ file metadata)"
  type: File
  inputBinding:
    prefix: --accuracy_metrics
- id: in_no_round
  doc: "Disable rounding number of predicted functions to the\nthe nearest whole number.\
    \ This option is important if\nyou are inputting abundances as proportions [default:\n\
    False]"
  type: boolean
  inputBinding:
    prefix: --no_round
- id: in_normalize_by_function
  doc: "Normalizes the predicted functional abundances by\ndividing each abundance\
    \ by the sum of functional\nabundances in the sample. Total sum of abundances\
    \ for\neach sample will equal 1."
  type: boolean
  inputBinding:
    prefix: --normalize_by_function
- id: in_normalize_by_otu
  doc: "Normalizes the predicted functional abundances by\ndividing each abundance\
    \ by the sum of OTUs in the\nsample. Note: total sum of abundances for each sample\n\
    will NOT equal 1."
  type: boolean
  inputBinding:
    prefix: --normalize_by_otu
- id: in_suppress_subset_loading
  doc: "Normally, only counts for OTUs present in the sample\nare loaded.  If this\
    \ flag is passed, the full biom\ntable is loaded.  This makes no difference for\
    \ the\nanalysis, but may result in faster load times (at the\ncost of more memory\
    \ usage)"
  type: boolean
  inputBinding:
    prefix: --suppress_subset_loading
- id: in_load_pre_calc_file_in_biom
  doc: "Instead of loading the precalculated file in tab-\ndelimited format (with\
    \ otu ids as row ids and traits\nas columns) load the data in biom format (with\
    \ otu as\nSampleIds and traits as ObservationIds) [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --load_precalc_file_in_biom
- id: in_input_variance_table
  doc: "Precalculated table of variances corresponding to the\nprecalculated table\
    \ of function predictions.  As with\nthe count table, these are on a per otu basis\
    \ and in\nBIOM format (can be gzipped). Note: using this option\noverrides --type_of_prediction\
    \ and --gg_version.\n[default: none]"
  type: string
  inputBinding:
    prefix: --input_variance_table
- id: in_with_confidence
  doc: Calculate 95% confidence intervals for metagenome
  type: boolean
  inputBinding:
    prefix: --with_confidence
- id: in_format_tab_delimited
  doc: "output the predicted metagenome table in tab-delimited\nformat [default: False]"
  type: boolean
  inputBinding:
    prefix: --format_tab_delimited
- id: in_input_otu_table
  doc: the input otu table in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_otu_table
- id: in_output_meta_genome_table
  doc: "the output file for the predicted metagenome\n[REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --output_metagenome_table
- id: in_predictions_dot
  doc: By default, this uses the confidence
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_meta_genome_table
  doc: "the output file for the predicted metagenome\n[REQUIRED]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_meta_genome_table)
cwlVersion: v1.1
baseCommand:
- predict_metagenomes.py
