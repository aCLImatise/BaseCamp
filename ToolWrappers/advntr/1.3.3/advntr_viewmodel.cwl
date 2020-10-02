class: CommandLineTool
id: advntr_viewmodel.cwl
inputs:
- id: in_h_slash_help
  doc: show this help message and exit
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_g_slash_gene
  doc: comma-separated list of Gene Names
  type: string
  inputBinding:
    prefix: -g/--gene
- id: in_p_slash_pattern
  doc: repeating pattern of VNTR in forward (5' to 3') direction
  type: long
  inputBinding:
    prefix: -p/--pattern
- id: in_m_slash_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File
  inputBinding:
    prefix: -m/--models
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- advntr
- viewmodel
