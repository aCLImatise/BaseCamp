class: CommandLineTool
id: ssu_esl_weight.cwl
inputs:
- id: g
  doc: ': Gerstein/Sonnhammer/Chothia tree weights  [default]'
  type: boolean
  inputBinding:
    prefix: -g
- id: p
  doc: ': Henikoff position-based weights'
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: ': filter out seqs by fractional identity'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
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
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-weight
