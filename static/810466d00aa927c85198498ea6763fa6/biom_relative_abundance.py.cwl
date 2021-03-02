class: CommandLineTool
id: biom_relative_abundance.py.cwl
inputs:
- id: in_input_biom_fp
  doc: BIOM file path.
  type: File?
  inputBinding:
    prefix: --input_biom_fp
- id: in_output_tsv_fp
  doc: A TSV table of relative OTU abundance data.
  type: string?
  inputBinding:
    prefix: --output_tsv_fp
- id: in_stabilize_variance
  doc: "Apply the variance-stabilizing arcsine square root\ntransformation to the\
    \ OTU proportion data.\n"
  type: boolean?
  inputBinding:
    prefix: --stabilize_variance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biom_relative_abundance.py
