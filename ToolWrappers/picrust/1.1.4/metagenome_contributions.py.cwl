class: CommandLineTool
id: metagenome_contributions.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_type_of_prediction
  doc: "Type of functional predictions. Valid choices are: ko,\ncog, rfam [default:\
    \ ko]"
  type: string?
  inputBinding:
    prefix: --type_of_prediction
- id: in_gg_version
  doc: "Version of GreenGenes that was used for OTU picking.\nValid choices are: 13_5,\
    \ 18may2012 [default: 13_5]"
  type: long?
  inputBinding:
    prefix: --gg_version
- id: in_input_count_table
  doc: "Precalculated function predictions on per otu basis in\nbiom format (can be\
    \ gzipped). Note: using this option\noverrides --type_of_prediction and --gg_version.\n\
    [default: none]"
  type: string?
  inputBinding:
    prefix: --input_count_table
- id: in_suppress_subset_loading
  doc: "Normally, only counts for OTUs present in the sample\nare loaded.  If this\
    \ flag is passed, the full biom\ntable is loaded.  This makes no difference for\
    \ the\nanalysis, but may result in faster load times (at the\ncost of more memory\
    \ usage)"
  type: boolean?
  inputBinding:
    prefix: --suppress_subset_loading
- id: in_load_pre_calc_file_in_biom
  doc: "Instead of loading the precalculated file in tab-\ndelimited format (with\
    \ otu ids as row ids and traits\nas columns) load the data in biom format (with\
    \ otu as\nSampleIds and traits as ObservationIds) [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --load_precalc_file_in_biom
- id: in_limit_to_functional_categories
  doc: "If provided only output prediction for functions that\nmatch the specified\
    \ functional category. Multiple\ncategories can be passed as a list separated\
    \ by |\n[default: False]"
  type: string?
  inputBinding:
    prefix: --limit_to_functional_categories
- id: in_limit_to_function
  doc: "If provided, only output predictions for the specified\nfunction ids.  Multiple\
    \ function ids can be passed\nusing comma delimiters."
  type: string?
  inputBinding:
    prefix: --limit_to_function
- id: in_input_otu_table
  doc: the input otu table in biom format [REQUIRED]
  type: string?
  inputBinding:
    prefix: --input_otu_table
- id: in_output_fp
  doc: "the output file for the metagenome contributions\n[REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --output_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "the output file for the metagenome contributions\n[REQUIRED]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- metagenome_contributions.py
