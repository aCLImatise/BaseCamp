class: CommandLineTool
id: trimFilterPE.cwl
inputs:
- id: if_a
  doc: '[<INPUT.fa>:<score>:[lmer_len]])'
  type: boolean
  inputBinding:
    prefix: --ifa
- id: trim_q
  doc: '[NO|ALL|ENDS|FRAC|ENDSFRAC|GLOBAL]'
  type: boolean
  inputBinding:
    prefix: --trimQ
- id: min_l
  doc: '[MINL]  --minQ [MINQ]  --zeroQ [ZEROQ]'
  type: boolean
  inputBinding:
    prefix: --minL
- id: trim_n
  doc: '[NO|ALL|ENDS|STRIP]  '
  type: boolean
  inputBinding:
    prefix: --trimN
- id: global
  doc: required option if --trimQ GLOBAL is passed. Two int, n1:n2, have to be passed
    specifying the number of bases  to be globally cut from the left and right, respectively.
  type: boolean
  inputBinding:
    prefix: --global
- id: trim_n
  doc: "NO:     does nothing to reads containing N's, ALL:    removes all reads containing\
    \ N's, ENDS:   trims ends of reads with N's, STRIPS: looks for the largest substring\
    \ with no N's. All reads are discarded if they are shorter than the sequence length\
    \ specified by -m/--minL."
  type: boolean
  inputBinding:
    prefix: --trimN
outputs: []
cwlVersion: v1.1
baseCommand:
- trimFilterPE
