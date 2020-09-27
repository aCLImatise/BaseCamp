class: CommandLineTool
id: rnazSelectSeqs.pl.cwl
inputs:
- id: in_num_seqs
  doc: Number of sequences in the output alignment(s). (Default:6)
  type: long
  inputBinding:
    prefix: --num-seqs
- id: in_num_samples
  doc: 'Number of output alignments (Default: 1)'
  type: long
  inputBinding:
    prefix: --num-samples
- id: in_opt_id
  doc: "The resulting alignment(s) is (are) optimized for this value of\nmean pairwise\
    \ identity (in percent, default: 80)"
  type: long
  inputBinding:
    prefix: --opt-id
- id: in_max_id
  doc: "Sequences from pairs with pairwise identity higher than X% are\nremoved (default:\
    \ 99, i.e. only almost identical sequences are\nremoved)"
  type: long
  inputBinding:
    prefix: --max-id
- id: in_no_reference
  doc: "By default the first sequence (=reference sequence) is always\npresent in\
    \ the output alignment(s). If you do not care having it\nremoved, set this flag."
  type: boolean
  inputBinding:
    prefix: --no-reference
- id: in_man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnazSelectSeqs.pl
