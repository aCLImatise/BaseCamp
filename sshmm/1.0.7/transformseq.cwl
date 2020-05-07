class: CommandLineTool
id: transformseq.cwl
inputs:
- id: fin
  doc: 'Sequence input file (default: stdin)'
  type: File
  inputBinding:
    prefix: --fin
- id: format_in
  doc: 'Multiple sequence alignment format: (clustal, fasta, plain, msf, genbank,
    nbrf, nexus, phylip, stockholm, intelligenetics, table, array)'
  type: string
  inputBinding:
    prefix: --format-in
- id: f_out
  doc: 'Output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --fout
- id: format_out
  doc: 'Multiple sequence alignment output format: (clustal, fasta, plain, intelligenetics,
    table, array) (Default: fasta)'
  type: string
  inputBinding:
    prefix: --format-out
- id: seg
  doc: Mask low complexity regions in protein sequences.
  type: boolean
  inputBinding:
    prefix: --seg
- id: subsample
  doc: Return a random subsample of the sequences.
  type: string
  inputBinding:
    prefix: --subsample
- id: reverse
  doc: reverse sequences
  type: boolean
  inputBinding:
    prefix: --reverse
- id: complement
  doc: complement DNA sequences
  type: boolean
  inputBinding:
    prefix: --complement
outputs: []
cwlVersion: v1.1
baseCommand:
- transformseq
