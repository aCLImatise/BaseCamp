class: CommandLineTool
id: rsem_refseq_extract_primary_assembly_input_top_level_assembly.fna.cwl
inputs:
- id: output_primary_assembly_fna
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-refseq-extract-primary-assembly
- input_top_level_assembly.fna
