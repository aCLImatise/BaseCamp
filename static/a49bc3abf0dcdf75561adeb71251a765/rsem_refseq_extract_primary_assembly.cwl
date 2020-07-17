class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_refseq_extract_primary_assembly.cwl
inputs:
- id: input_top_level_assembly_dot_fna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_primary_assembly_dot_fna
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-refseq-extract-primary-assembly
