class: CommandLineTool
id: biom_relative_abundance.py.cwl
inputs:
- id: input_biom_fp
  doc: BIOM file path.
  type: string
  inputBinding:
    prefix: --input_biom_fp
- id: output_tsv_fp
  doc: A TSV table of relative OTU abundance data.
  type: string
  inputBinding:
    prefix: --output_tsv_fp
- id: stabilize_variance
  doc: Apply the variance-stabilizing arcsine square root transformation to the OTU
    proportion data.
  type: boolean
  inputBinding:
    prefix: --stabilize_variance
outputs: []
cwlVersion: v1.1
baseCommand:
- biom_relative_abundance.py
