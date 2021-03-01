class: CommandLineTool
id: lofreq_viterbi.cwl
inputs:
- id: in_ref
  doc: Indexed reference fasta file [null]
  type: File?
  inputBinding:
    prefix: --ref
- id: in_keep_flags
  doc: Don't delete flags MC, MD, NM and A, which are all prone to change during realignment.
  type: boolean?
  inputBinding:
    prefix: --keepflags
- id: in_def_qual
  doc: Assume INT as quality for all bases with BQ2. Default (=-1) is to use median
    quality of bases in read.
  type: long?
  inputBinding:
    prefix: --defqual
- id: in_out
  doc: Output BAM file [- = stdout = default]
  type: File?
  inputBinding:
    prefix: --out
- id: in_verbose
  doc: Be verbose
  type: boolean?
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
- id: out_out
  doc: Output BAM file [- = stdout = default]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- lofreq
- viterbi
