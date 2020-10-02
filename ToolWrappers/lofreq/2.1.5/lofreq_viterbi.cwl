class: CommandLineTool
id: lofreq_viterbi.cwl
inputs:
- id: in__ref_file
  doc: '| --ref FILE     Indexed reference fasta file [null]'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__keepflags_delete
  doc: "| --keepflags    Don't delete flags MC, MD, NM and A, which are all prone\
    \ to change during realignment."
  type: boolean
  inputBinding:
    prefix: -k
- id: in__defqual_int
  doc: '| --defqual INT  Assume INT as quality for all bases with BQ2. Default (=-1)
    is to use median quality of bases in read.'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__file_output
  doc: '| --out FILE     Output BAM file [- = stdout = default]'
  type: File
  inputBinding:
    prefix: -o
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__file_output
  doc: '| --out FILE     Output BAM file [- = stdout = default]'
  type: File
  outputBinding:
    glob: $(inputs.in__file_output)
cwlVersion: v1.1
baseCommand:
- lofreq
- viterbi
