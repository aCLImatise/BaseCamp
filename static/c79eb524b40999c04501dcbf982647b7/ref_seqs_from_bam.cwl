class: CommandLineTool
id: ref_seqs_from_bam.cwl
inputs:
- id: in_bam
  doc: input bam file, MD tag must be set (mini_align -m).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ref_seqs_from_bam
