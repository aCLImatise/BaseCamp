class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ref_seqs_from_bam.cwl
inputs:
- id: bam
  doc: input bam file, MD tag must be set (mini_align -m).
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ref_seqs_from_bam
