class: CommandLineTool
id: barrnap.py.cwl
inputs:
- id: kingdom
  doc: 'whether to look for eukaryotic, archaeal, or bacterial rDNA; default: bac'
  type: string
  inputBinding:
    prefix: --kingdom
- id: threads
  doc: 'Number of threads/cores/CPUs to use;default: 8'
  type: string
  inputBinding:
    prefix: --threads
- id: evalue
  doc: 'Similarity e-value cut-off; default: 1e-06'
  type: string
  inputBinding:
    prefix: --evalue
- id: len_cut_off
  doc: 'Proportional length threshold to label as partial; default: 0.8'
  type: string
  inputBinding:
    prefix: --lencutoff
- id: reject
  doc: 'Proportional length threshold to reject prediction; default: 0.5'
  type: string
  inputBinding:
    prefix: --reject
- id: in_cseq
  doc: Include FASTA input sequences in GFF3 output
  type: boolean
  inputBinding:
    prefix: --incseq
- id: citation
  doc: Print citation for referencing barrnap
  type: boolean
  inputBinding:
    prefix: --citation
outputs: []
cwlVersion: v1.1
baseCommand:
- barrnap.py
