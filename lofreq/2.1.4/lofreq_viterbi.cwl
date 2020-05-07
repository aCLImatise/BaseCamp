class: CommandLineTool
id: lofreq_viterbi.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: '| --ref FILE     Indexed reference fasta file [null]'
  type: boolean
  inputBinding:
    prefix: -f
- id: k
  doc: "| --keepflags    Don't delete flags MC, MD, NM and A, which are all prone\
    \ to change during realignment."
  type: boolean
  inputBinding:
    prefix: -k
- id: q
  doc: '| --defqual INT  Assume INT as quality for all bases with BQ2. Default (=-1)
    is to use median quality of bases in read.'
  type: boolean
  inputBinding:
    prefix: -q
- id: o
  doc: '| --out FILE     Output BAM file [- = stdout = default] --verbose      Be
    verbose'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: '| --ref FILE     Indexed reference fasta file [null]'
  type: boolean
  inputBinding:
    prefix: -f
- id: k
  doc: "| --keepflags    Don't delete flags MC, MD, NM and A, which are all prone\
    \ to change during realignment."
  type: boolean
  inputBinding:
    prefix: -k
- id: q
  doc: '| --defqual INT  Assume INT as quality for all bases with BQ2. Default (=-1)
    is to use median quality of bases in read.'
  type: boolean
  inputBinding:
    prefix: -q
- id: o
  doc: '| --out FILE     Output BAM file [- = stdout = default] --verbose      Be
    verbose'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- viterbi
