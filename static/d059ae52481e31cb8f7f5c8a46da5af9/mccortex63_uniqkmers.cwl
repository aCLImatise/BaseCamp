class: CommandLineTool
id: mccortex63_uniqkmers.cwl
inputs:
- id: flank
  doc: Add flanking kmers to <in.fa>
  type: string
  inputBinding:
    prefix: --flank
outputs: []
cwlVersion: v1.1
baseCommand:
- mccortex63
- uniqkmers
