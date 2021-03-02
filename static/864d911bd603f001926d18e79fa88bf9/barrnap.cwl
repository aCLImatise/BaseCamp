class: CommandLineTool
id: barrnap.cwl
inputs:
- id: in_citation
  doc: Print citation for referencing barrnap
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_kingdom
  doc: "[X]     Kingdom: arc mito bac euk (default 'bac')"
  type: boolean?
  inputBinding:
    prefix: --kingdom
- id: in_quiet
  doc: No screen output (default OFF)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: "[N]     Number of threads/cores/CPUs to use (default '1')"
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_len_cut_off
  doc: "[n.n] Proportional length threshold to label as partial (default '0.8')"
  type: boolean?
  inputBinding:
    prefix: --lencutoff
- id: in_reject
  doc: "[n.n]    Proportional length threshold to reject prediction (default '0.25')"
  type: boolean?
  inputBinding:
    prefix: --reject
- id: in_evalue
  doc: "[n.n]    Similarity e-value cut-off (default '1e-06')"
  type: boolean?
  inputBinding:
    prefix: --evalue
- id: in_in_cseq
  doc: Include FASTA _input_ sequences in GFF3 output (default OFF)
  type: boolean?
  inputBinding:
    prefix: --incseq
- id: in_out_seq
  doc: "[X]      Save rRNA hit seqs to this FASTA file (default '')"
  type: boolean?
  inputBinding:
    prefix: --outseq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- barrnap
