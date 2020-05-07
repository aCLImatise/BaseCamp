class: CommandLineTool
id: barrnap.cwl
inputs:
- id: citation
  doc: Print citation for referencing barrnap
  type: boolean
  inputBinding:
    prefix: --citation
- id: kingdom
  doc: "[X]     Kingdom: bac mito arc euk (default 'bac')"
  type: boolean
  inputBinding:
    prefix: --kingdom
- id: quiet
  doc: No screen output (default OFF)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: threads
  doc: "[N]     Number of threads/cores/CPUs to use (default '1')"
  type: boolean
  inputBinding:
    prefix: --threads
- id: len_cut_off
  doc: "[n.n] Proportional length threshold to label as partial (default '0.8')"
  type: boolean
  inputBinding:
    prefix: --lencutoff
- id: reject
  doc: "[n.n]    Proportional length threshold to reject prediction (default '0.25')"
  type: boolean
  inputBinding:
    prefix: --reject
- id: evalue
  doc: "[n.n]    Similarity e-value cut-off (default '1e-06')"
  type: boolean
  inputBinding:
    prefix: --evalue
- id: in_cseq
  doc: Include FASTA _input_ sequences in GFF3 output (default OFF)
  type: boolean
  inputBinding:
    prefix: --incseq
- id: out_seq
  doc: "[X]      Save rRNA hit seqs to this FASTA file (default '')"
  type: boolean
  inputBinding:
    prefix: --outseq
outputs: []
cwlVersion: v1.1
baseCommand:
- barrnap
