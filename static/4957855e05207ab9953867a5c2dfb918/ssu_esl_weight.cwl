class: CommandLineTool
id: ../../../ssu_esl_weight.cwl
inputs:
- id: gersteinsonnhammerchothia_tree_weights
  doc: ': Gerstein/Sonnhammer/Chothia tree weights  [default]'
  type: boolean
  inputBinding:
    prefix: -g
- id: henikoff_positionbased_weights
  doc: ': Henikoff position-based weights'
  type: boolean
  inputBinding:
    prefix: -p
- id: henikoff_simple_filter
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: -b
- id: filter_seqs_fractional
  doc: ': filter out seqs by fractional identity'
  type: boolean
  inputBinding:
    prefix: -f
- id: send_output_file
  doc: ': send output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: id
  doc: ': for -b: set identity cutoff  [0.62]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --id
- id: idf
  doc: ': for -f: set identity cutoff  [0.80]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --idf
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: amino
  doc: ': <msa file> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': <msa file> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': <msa file> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-weight
