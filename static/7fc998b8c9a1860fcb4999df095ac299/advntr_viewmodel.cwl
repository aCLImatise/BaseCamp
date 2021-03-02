class: CommandLineTool
id: advntr_viewmodel.cwl
inputs:
- id: in_gene
  doc: comma-separated list of Gene Names
  type: string?
  inputBinding:
    prefix: --gene
- id: in_pattern
  doc: repeating pattern of VNTR in forward (5' to 3') direction
  type: long?
  inputBinding:
    prefix: --pattern
- id: in_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File?
  inputBinding:
    prefix: --models
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- advntr
- viewmodel
