class: CommandLineTool
id: cactus_fasta_softmask_intervals.py.cwl
inputs:
- id: in_chrom
  doc: "copy (and mask) only the specified sequence(s)\n<sequence_names> is a comma-separated\
    \ list\n(default is to copy and mask all sequences)"
  type: string
  inputBinding:
    prefix: --chrom
- id: in_origin
  doc: "intervals are origin-one, closed\n(default is origin-zero, half-open)"
  type: string
  inputBinding:
    prefix: --origin
- id: in_wrap
  doc: "split each sequence into multiple lines if needed\n(default is to write sequence\
    \ on a single line)"
  type: long
  inputBinding:
    prefix: --wrap
- id: in_mask
  doc: "mask with a particular character (usually X or N)\n(default is to mask with\
    \ lowercase)"
  type: string
  inputBinding:
    prefix: --mask
- id: in_unmask
  doc: "remove any previous softmasking from sequence being masked (covert to upper\
    \ case\nbefore masking)\n"
  type: boolean
  inputBinding:
    prefix: --unmask
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus_fasta_softmask_intervals.py
