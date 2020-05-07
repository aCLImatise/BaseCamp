class: CommandLineTool
id: mccortex31_uniqkmers.cwl
inputs:
- id: flank
  doc: Add flanking kmers to <in.fa>
  type: string
  inputBinding:
    prefix: --flank
outputs: []
cwlVersion: v1.1
baseCommand:
- mccortex31
- uniqkmers
