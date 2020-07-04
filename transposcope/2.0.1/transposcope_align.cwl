class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/transposcope_align.cwl
inputs:
- id: genes
  doc: Path to refFlat.txt (If information regarding the nearest gene should be included.)
  type: string
  inputBinding:
    prefix: --genes
- id: group_one
  doc: 'First level group tag (default: ungrouped)'
  type: string
  inputBinding:
    prefix: --group1
- id: group_two
  doc: 'Second level group tag (default: ungrouped)'
  type: string
  inputBinding:
    prefix: --group2
- id: keep_files
  doc: 'Flag which determines whether intermediate bam files and fasta files are deleted
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_files
outputs: []
cwlVersion: v1.1
baseCommand:
- transposcope
- align
