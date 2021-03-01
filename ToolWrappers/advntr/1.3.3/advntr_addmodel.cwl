class: CommandLineTool
id: advntr_addmodel.cwl
inputs:
- id: in_reference
  doc: Reference genome
  type: string?
  inputBinding:
    prefix: --reference
- id: in_chromosome
  doc: Chromosome (e.g. chr1)
  type: long?
  inputBinding:
    prefix: --chromosome
- id: in_pattern
  doc: First repeating pattern of VNTR in forward (5' to 3') direction
  type: long?
  inputBinding:
    prefix: --pattern
- id: in_start
  doc: Start coordinate of VNTR in forward (5' to 3') direction
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: End coordinate of VNTR in forward (5' to 3') direction
  type: long?
  inputBinding:
    prefix: --end
- id: in_gene
  doc: Gene name
  type: string?
  inputBinding:
    prefix: --gene
- id: in_annotation
  doc: Annotation of VNTR region
  type: string?
  inputBinding:
    prefix: --annotation
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
- addmodel
