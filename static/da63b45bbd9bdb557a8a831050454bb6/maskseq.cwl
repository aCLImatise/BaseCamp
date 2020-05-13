class: CommandLineTool
id: maskseq.cwl
inputs:
- id: regions
  doc: 'range      [None] Regions to mask. A set of regions is specified by a set
    of pairs of positions. The positions are integers. They are separated by any non-digit,
    non-alpha character. Examples of region specifications are: 24-45, 56-78 1:45,
    67=99;765..888 1,5,8,10,23,45,57,99'
  type: boolean
  inputBinding:
    prefix: -regions
- id: to_lower
  doc: toggle     [N] The region can be 'masked' by converting the sequence characters
    to lower-case, some non-EMBOSS programs e.g. fasta can interpret this as a masked
    region. The sequence is unchanged apart from the case change. You might like to
    ensure that the whole sequence is in upper-case before masking the specified regions
    to lower-case by using the '-supper' flag.
  type: boolean
  inputBinding:
    prefix: -tolower
outputs: []
cwlVersion: v1.1
baseCommand:
- maskseq
