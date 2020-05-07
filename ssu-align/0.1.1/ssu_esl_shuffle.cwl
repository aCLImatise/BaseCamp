class: CommandLineTool
id: ssu_esl_shuffle.cwl
inputs:
- id: o
  doc: ': direct output data to file <f>'
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: ': generate <n> samples (per input seq/msa)  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: -N
- id: l
  doc: ': truncate outputs to length <n>  [0]  (n>=0)'
  type: string
  inputBinding:
    prefix: -L
- id: r
  doc: ': reverse each input'
  type: boolean
  inputBinding:
    prefix: -r
- id: w
  doc: ': regionally shuffle inputs in window size <n>  (n>0)'
  type: string
  inputBinding:
    prefix: -w
- id: rna
  doc: ': generate RNA sequence  [default]'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': generate DNA sequence'
  type: boolean
  inputBinding:
    prefix: --dna
- id: amino
  doc: ': generate protein sequence'
  type: boolean
  inputBinding:
    prefix: --amino
- id: seed
  doc: ": set random number generator's seed to <n>  [0]  (n>=0)"
  type: string
  inputBinding:
    prefix: --seed
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-shuffle
