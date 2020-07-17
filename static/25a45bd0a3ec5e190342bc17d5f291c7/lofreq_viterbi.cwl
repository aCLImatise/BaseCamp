class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lofreq_viterbi.cwl
inputs:
- id: _ref_file
  doc: '| --ref FILE     Indexed reference fasta file [null]'
  type: boolean
  inputBinding:
    prefix: -f
- id: _keepflags_delete
  doc: "| --keepflags    Don't delete flags MC, MD, NM and A, which are all prone\
    \ to change during realignment."
  type: boolean
  inputBinding:
    prefix: -k
- id: _defqual_int
  doc: '| --defqual INT  Assume INT as quality for all bases with BQ2. Default (=-1)
    is to use median quality of bases in read.'
  type: boolean
  inputBinding:
    prefix: -q
- id: _file_file
  doc: '| --out FILE     Output BAM file [- = stdout = default] --verbose      Be
    verbose'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- viterbi
