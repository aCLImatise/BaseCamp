class: CommandLineTool
id: cactus_fasta_softmask_intervals.py.cwl
inputs:
- id: chrom
  doc: copy (and mask) only the specified sequence(s) <sequence_names> is a comma-separated
    list (default is to copy and mask all sequences)
  type: string
  inputBinding:
    prefix: --chrom
- id: origin
  doc: intervals are origin-one, closed (default is origin-zero, half-open)
  type: string
  inputBinding:
    prefix: --origin
- id: wrap
  doc: split each sequence into multiple lines if needed (default is to write sequence
    on a single line)
  type: string
  inputBinding:
    prefix: --wrap
- id: mask
  doc: mask with a particular character (usually X or N) (default is to mask with
    lowercase)
  type: string
  inputBinding:
    prefix: --mask
- id: unmask
  doc: 'remove any previous softmasking from sequence being masked (covert to upper
    case before masking)                       '
  type: boolean
  inputBinding:
    prefix: --unmask
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus_fasta_softmask_intervals.py
