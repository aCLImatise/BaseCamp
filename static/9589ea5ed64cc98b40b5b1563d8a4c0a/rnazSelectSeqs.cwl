class: CommandLineTool
id: rnazSelectSeqs.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: num_seqs
  doc: Number of sequences in the output alignment(s). (Default:6)
  type: string
  inputBinding:
    prefix: --num-seqs
- id: num_samples
  doc: 'Number of output alignments (Default: 1)'
  type: string
  inputBinding:
    prefix: --num-samples
- id: opt_id
  doc: 'The resulting alignment(s) is (are) optimized for this value of mean pairwise
    identity (in percent, default: 80)'
  type: string
  inputBinding:
    prefix: --opt-id
- id: max_id
  doc: 'Sequences from pairs with pairwise identity higher than X% are removed (default:
    99, i.e. only almost identical sequences are removed)'
  type: string
  inputBinding:
    prefix: --max-id
- id: no_reference
  doc: By default the first sequence (=reference sequence) is always present in the
    output alignment(s). If you do not care having it removed, set this flag.
  type: boolean
  inputBinding:
    prefix: --no-reference
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazSelectSeqs.pl
