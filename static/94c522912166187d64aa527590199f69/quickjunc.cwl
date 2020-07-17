class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/quickjunc.cwl
inputs:
- id: bam_file_name
  doc: 'BAM file name (default: None)'
  type: string
  inputBinding:
    prefix: -i
- id: anchor_size_default
  doc: 'Anchor size (default: 8)'
  type: string
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- quickjunc
