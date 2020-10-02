class: CommandLineTool
id: advntr_addmodel.cwl
inputs:
- id: in_r_slash_reference
  doc: Reference genome
  type: string
  inputBinding:
    prefix: -r/--reference
- id: in_c_slash_chromosome
  doc: Chromosome (e.g. chr1)
  type: long
  inputBinding:
    prefix: -c/--chromosome
- id: in_p_slash_pattern
  doc: First repeating pattern of VNTR in forward (5' to 3') direction
  type: long
  inputBinding:
    prefix: -p/--pattern
- id: in_s_slash_start
  doc: Start coordinate of VNTR in forward (5' to 3') direction
  type: long
  inputBinding:
    prefix: -s/--start
- id: in_e_slash_end
  doc: End coordinate of VNTR in forward (5' to 3') direction
  type: long
  inputBinding:
    prefix: -e/--end
- id: in_g_slash_gene
  doc: Gene name
  type: string
  inputBinding:
    prefix: -g/--gene
- id: in_a_slash_annotation
  doc: Annotation of VNTR region
  type: string
  inputBinding:
    prefix: -a/--annotation
- id: in_m_slash_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File
  inputBinding:
    prefix: -m/--models
- id: in_h_slash_help
  doc: show this help message and exit
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- advntr
- addmodel
