class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iCLIPro_bam_splitter.cwl
inputs:
- id: output_folder_default
  doc: output folder (default is cwd - current working directory)
  type: Directory
  inputBinding:
    prefix: -o
- id: use_only_reads
  doc: 'use only reads with minimum mapping quality (mapq) (0..100, default: 10)'
  type: long
  inputBinding:
    prefix: -q
- id: read_groups_default
  doc: 'read len groups (default: "A:16-39,A1:16-25,A2:26-32,A3:33-39,B:42")'
  type: string
  inputBinding:
    prefix: -g
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iCLIPro_bam_splitter
