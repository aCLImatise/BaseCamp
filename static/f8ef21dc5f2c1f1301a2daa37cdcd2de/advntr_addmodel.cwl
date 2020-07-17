class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/advntr_addmodel.cwl
inputs:
- id: r_slash_reference
  doc: Reference genome
  type: string
  inputBinding:
    prefix: -r/--reference
- id: c_slash_chromosome
  doc: Chromosome (e.g. chr1)
  type: string
  inputBinding:
    prefix: -c/--chromosome
- id: p_slash_pattern
  doc: First repeating pattern of VNTR in forward (5' to 3') direction
  type: string
  inputBinding:
    prefix: -p/--pattern
- id: s_slash_start
  doc: Start coordinate of VNTR in forward (5' to 3') direction
  type: long
  inputBinding:
    prefix: -s/--start
- id: e_slash_end
  doc: End coordinate of VNTR in forward (5' to 3') direction
  type: long
  inputBinding:
    prefix: -e/--end
- id: g_slash_gene
  doc: Gene name
  type: string
  inputBinding:
    prefix: -g/--gene
- id: a_slash_annotation
  doc: Annotation of VNTR region
  type: string
  inputBinding:
    prefix: -a/--annotation
- id: m_slash_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File
  inputBinding:
    prefix: -m/--models
- id: h_slash_help
  doc: show this help message and exit
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs: []
cwlVersion: v1.1
baseCommand:
- advntr
- addmodel
