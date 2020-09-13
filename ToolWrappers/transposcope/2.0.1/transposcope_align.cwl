class: CommandLineTool
id: ../../../transposcope_align.cwl
inputs:
- id: in_genes
  doc: "Path to refFlat.txt (If information regarding the\nnearest gene should be\
    \ included.)"
  type: File
  inputBinding:
    prefix: --genes
- id: in_group_one
  doc: 'First level group tag (default: ungrouped)'
  type: long
  inputBinding:
    prefix: --group1
- id: in_group_two
  doc: 'Second level group tag (default: ungrouped)'
  type: long
  inputBinding:
    prefix: --group2
- id: in_keep_files
  doc: "Flag which determines whether intermediate bam files\nand fasta files are\
    \ deleted (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --keep_files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- transposcope
- align
