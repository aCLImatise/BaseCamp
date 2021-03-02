class: CommandLineTool
id: chimerascan_relative_bedpe_to_CG.cwl
inputs:
- id: in_gene_annotation
  doc: gene_features.txt file used by chimersacan
  type: File?
  inputBinding:
    prefix: --gene-annotation
- id: in_output
  doc: "output filename; '-' for stdout\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output filename; '-' for stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- chimerascan-relative-bedpe-to-CG
