class: CommandLineTool
id: nucamino_hiv1b.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hiv1b
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hiv1b_options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: quiet
  doc: hide non-error information output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: gene
  doc: =[GAG|POL|GP41]                      gene(s) the input sequences should be
    aligned with
  type: boolean
  inputBinding:
    prefix: --gene
- id: in_del_codon_opening_bonus
  doc: 'bonus score when a indel codon was opened (default: 0)'
  type: string
  inputBinding:
    prefix: --indel-codon-opening-bonus
- id: in_del_codon_extension_bonus
  doc: 'bonus score when a indel codon was extended (default: 2)'
  type: string
  inputBinding:
    prefix: --indel-codon-extension-bonus
- id: stop_codon_penalty
  doc: 'penalty score when a stop codon was met (default: 4)'
  type: string
  inputBinding:
    prefix: --stop-codon-penalty
- id: gap_opening_penalty
  doc: 'penalty score when a gap was opened (default: 10)'
  type: string
  inputBinding:
    prefix: --gap-opening-penalty
- id: gap_extension_penalty
  doc: 'penalty score when a gap was extended (default: 2)'
  type: string
  inputBinding:
    prefix: --gap-extension-penalty
- id: go_routines
  doc: 'number of goroutines the alignment will use. Use the core number when equals
    to 0 (default: 0)'
  type: string
  inputBinding:
    prefix: --goroutines
- id: output_format
  doc: '[tsv|json]    output format of the alignment result (default: tsv)'
  type: string
  inputBinding:
    prefix: --output-format
- id: input
  doc: 'FASTA file contains one or more DNA sequences (default: -)'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'output destination of the alignment results (default: -)'
  type: string
  inputBinding:
    prefix: --output
- id: ppr_of
  doc: output pprof benchmark result
  type: boolean
  inputBinding:
    prefix: --pprof
outputs: []
cwlVersion: v1.1
baseCommand:
- nucamino
- hiv1b
