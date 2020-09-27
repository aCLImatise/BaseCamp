class: CommandLineTool
id: rnasoup_consMFE.pl.cwl
inputs:
- id: in_fast_a
  doc: Original FASTA file with sequences which have been clustered.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_dir
  doc: Directory containing intermediate*.aln files.
  type: boolean
  inputBinding:
    prefix: --dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnasoup_consMFE.pl
