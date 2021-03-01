class: CommandLineTool
id: barrnap.py.cwl
inputs:
- id: in_kingdom
  doc: "whether to look for eukaryotic, archaeal, or bacterial\nrDNA; default: bac"
  type: string?
  inputBinding:
    prefix: --kingdom
- id: in_threads
  doc: 'Number of threads/cores/CPUs to use;default: 8'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_evalue
  doc: 'Similarity e-value cut-off; default: 1e-06'
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_len_cut_off
  doc: "Proportional length threshold to label as partial;\ndefault: 0.8"
  type: long?
  inputBinding:
    prefix: --lencutoff
- id: in_reject
  doc: "Proportional length threshold to reject prediction;\ndefault: 0.5"
  type: long?
  inputBinding:
    prefix: --reject
- id: in_in_cseq
  doc: Include FASTA input sequences in GFF3 output
  type: boolean?
  inputBinding:
    prefix: --incseq
- id: in_citation
  doc: Print citation for referencing barrnap
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_fast_a
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- barrnap.py
