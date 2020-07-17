class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gendb.cwl
inputs:
- id: alph
  doc: Set the alphabet (overrides -type)
  type: string
  inputBinding:
    prefix: -alph
- id: am_big
  doc: Set the fraction of symbols that will be ambiguous (overrides -type)
  type: string
  inputBinding:
    prefix: -ambig
- id: b_file
  doc: Set the background
  type: string
  inputBinding:
    prefix: -bfile
- id: min_seq
  doc: 'Set the minimum sequence length (default: 50)'
  type: long
  inputBinding:
    prefix: -minseq
- id: max_seq
  doc: 'Set the maximum sequence length (default: 2000)'
  type: long
  inputBinding:
    prefix: -maxseq
- id: order
  doc: 'Set the highest background order to load (default: load highest available)'
  type: string
  inputBinding:
    prefix: -order
- id: type
  doc: '|1|2|3|4          Set the alphabet type 0 = Protein with 1% ambiguous symbols
    (default) 1 = DNA with 1% ambiguous symbols 2 = codons (ignores -bfile) 3 = DNA
    without ambiguous symbols 4 = Protein without ambiguous symbols'
  type: string
  inputBinding:
    prefix: -type
- id: dummy
  doc: Add dummy sequence showing the configuration
  type: boolean
  inputBinding:
    prefix: -dummy
- id: seed
  doc: Set the pseudo-random number generator seed
  type: string
  inputBinding:
    prefix: -seed
- id: sequence_count
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gendb
