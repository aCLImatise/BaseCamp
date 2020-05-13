class: CommandLineTool
id: rsem_refseq_extract_primary_assembly_output_primary_assembly.fna.cwl
inputs:
- id: input_top_level_assembly_fna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_primary_assembly_fna
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-refseq-extract-primary-assembly
- output_primary_assembly.fna
