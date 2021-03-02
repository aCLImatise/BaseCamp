class: CommandLineTool
id: normalize_by_copy_number.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_gg_version
  doc: "Version of GreenGenes that was used for OTU picking.\nValid choices are: 13_5,\
    \ 18may2012 [default: 13_5]"
  type: long?
  inputBinding:
    prefix: --gg_version
- id: in_input_count_fp
  doc: "Precalculated input marker gene copy number\npredictions on per otu basis\
    \ in biom format (can be\ngzipped).Note: using this option overrides\n--gg_version.\
    \ [default: none]"
  type: long?
  inputBinding:
    prefix: --input_count_fp
- id: in_metadata_identifer
  doc: "identifier for copy number entry as observation\nmetadata [default: CopyNumber]"
  type: long?
  inputBinding:
    prefix: --metadata_identifer
- id: in_load_pre_calc_file_in_biom
  doc: "Instead of loading the precalculated file in tab-\ndelimited format (with\
    \ otu ids as row ids and traits\nas columns) load the data in biom format (with\
    \ otu as\nSampleIds and traits as ObservationIds) [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --load_precalc_file_in_biom
- id: in_input_otu_fp
  doc: the input otu table filepath in biom format [REQUIRED]
  type: File?
  inputBinding:
    prefix: --input_otu_fp
- id: in_output_otu_fp
  doc: "the output otu table filepath in biom format\n[REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --output_otu_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_otu_fp
  doc: "the output otu table filepath in biom format\n[REQUIRED]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_otu_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- normalize_by_copy_number.py
