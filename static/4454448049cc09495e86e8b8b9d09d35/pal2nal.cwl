class: CommandLineTool
id: pal2nal.pl.cwl
inputs:
- id: sequence
  doc: in pep.aln and nuc.fasta should be the same.
  type: string
  inputBinding:
    prefix: '- sequence'
- id: ids
  doc: pep.aln are used in the output.
  type: string
  inputBinding:
    prefix: '- IDs'
outputs: []
cwlVersion: v1.1
baseCommand:
- pal2nal.pl
