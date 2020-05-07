class: CommandLineTool
id: compare_distance_matrices.py.cwl
inputs:
- id: method
  doc: 'matrix correlation method to use. Valid options: [mantel, partial_mantel,
    mantel_corr] [REQUIRED]'
  type: string
  inputBinding:
    prefix: --method
- id: input_dms
  doc: 'the input distance matrices, comma-separated. WARNING: Only symmetric, hollow
    distance matrices may be used as input. Asymmetric distance matrices, such as
    those obtained by the UniFrac Gain metric (i.e. beta_diversity.py -m unifrac_g),
    should not be used as input [REQUIRED]'
  type: string
  inputBinding:
    prefix: --input_dms
- id: output_dir
  doc: path to the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_distance_matrices.py
