class: CommandLineTool
id: base_evolve.cwl
inputs:
- id: in_n_sites
  doc: Generate an alignment with <nsites> columns.  Default is 1000.
  type: long?
  inputBinding:
    prefix: --nsites
- id: in_msa_format
  doc: "|PHYLIP|MPM|SS\nOutput alignment in specified format.  Default is FASTA."
  type: string?
  inputBinding:
    prefix: --msa-format
- id: in_features
  doc: "(for use with a phylo-HMM)  Output an annotations file in GFF\nreflecting\
    \ the path through the phylo-HMM."
  type: File?
  inputBinding:
    prefix: --features
- id: in_cat_map
  doc: "(for use with --features)  Use specified category map to\ndefine feature names."
  type: string?
  inputBinding:
    prefix: --catmap
- id: in_embed
  doc: ",<length>\nEmbed an artificial element of the given length in the alignment,\n\
    drawing columns from <alt.mod>.  A single element is embedded in\nthe exact middle\
    \ of the generated alignment.  Useful for testing\nsensitivity of methods for\
    \ functional element detection."
  type: long?
  inputBinding:
    prefix: --embed
- id: in_file_dot_hmm
  doc: ''
  type: File?
  inputBinding:
    position: 0
- id: in_tree_one_dot_mod
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_tree_three_dot_mod
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_features
  doc: "(for use with a phylo-HMM)  Output an annotations file in GFF\nreflecting\
    \ the path through the phylo-HMM."
  type: File?
  outputBinding:
    glob: $(inputs.in_features)
hints: []
cwlVersion: v1.1
baseCommand:
- base_evolve
