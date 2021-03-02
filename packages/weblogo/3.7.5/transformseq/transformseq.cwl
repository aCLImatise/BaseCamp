class: CommandLineTool
id: transformseq.cwl
inputs:
- id: in_fin
  doc: 'Sequence input file (default: stdin)'
  type: File?
  inputBinding:
    prefix: --fin
- id: in_format_in
  doc: "Multiple sequence alignment format: (clustal,\nfasta, plain, msf, genbank,\
    \ nbrf, nexus, phylip,\nstockholm, intelligenetics, table, array)"
  type: string?
  inputBinding:
    prefix: --format-in
- id: in_f_out
  doc: 'Output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --fout
- id: in_format_out
  doc: "Multiple sequence alignment output format:\n(clustal, fasta, plain, intelligenetics,\
    \ table,\narray) (Default: fasta)"
  type: string?
  inputBinding:
    prefix: --format-out
- id: in_seg
  doc: Mask low complexity regions in protein sequences.
  type: boolean?
  inputBinding:
    prefix: --seg
- id: in_subsample
  doc: Return a random subsample of the sequences.
  type: string?
  inputBinding:
    prefix: --subsample
- id: in_reverse
  doc: reverse sequences
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_complement
  doc: complement DNA sequences
  type: boolean?
  inputBinding:
    prefix: --complement
- id: in_sequence_data_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence_logo_dot_eps
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_f_out
  doc: 'Output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_f_out)
hints: []
cwlVersion: v1.1
baseCommand:
- transformseq
