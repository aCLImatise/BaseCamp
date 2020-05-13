class: CommandLineTool
id: assess_homopolymers_count_bam.cwl
inputs:
- id: bam
  doc: Input bam file.
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: 'Output directory (will be created). (default: homopolymers)'
  type: string
  inputBinding:
    prefix: --output_dir
- id: homo_len
  doc: 'Minimum homopolymer length, default 3 (default: 3)'
  type: string
  inputBinding:
    prefix: --homo_len
outputs: []
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- count
- bam
