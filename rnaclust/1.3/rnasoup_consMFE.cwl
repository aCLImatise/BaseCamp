class: CommandLineTool
id: rnasoup_consMFE.pl.cwl
inputs:
- id: fast_a
  doc: Original FASTA file with sequences which have been clustered.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: dir
  doc: Directory containing intermediate*.aln files.
  type: boolean
  inputBinding:
    prefix: --dir
outputs: []
cwlVersion: v1.1
baseCommand:
- rnasoup_consMFE.pl
