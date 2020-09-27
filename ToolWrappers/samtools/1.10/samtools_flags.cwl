class: CommandLineTool
id: samtools_flags.cwl
inputs:
- id: in_zero_x_one
  doc: PAIRED        .. paired-end (or multiple-segment) sequencing technology
  type: long
  inputBinding:
    position: 0
- id: in_zero_x_two
  doc: PROPER_PAIR   .. each segment properly aligned according to the aligner
  type: long
  inputBinding:
    position: 1
- id: in_zero_x_four
  doc: UNMAP         .. segment unmapped
  type: long
  inputBinding:
    position: 2
- id: in_zero_x_eight
  doc: MUNMAP        .. next segment in the template unmapped
  type: long
  inputBinding:
    position: 3
- id: in_zero_x_one_zero
  doc: REVERSE       .. SEQ is reverse complemented
  type: long
  inputBinding:
    position: 4
- id: in_zero_x_two_zero
  doc: MREVERSE      .. SEQ of the next segment in the template is reversed
  type: long
  inputBinding:
    position: 5
- id: in_zero_x_four_zero
  doc: READ1         .. the first segment in the template
  type: long
  inputBinding:
    position: 6
- id: in_zero_x_eight_zero
  doc: READ2         .. the last segment in the template
  type: long
  inputBinding:
    position: 7
- id: in_zero_x_one_zero_zero
  doc: SECONDARY     .. secondary alignment
  type: long
  inputBinding:
    position: 8
- id: in_zero_x_two_zero_zero
  doc: QCFAIL        .. not passing quality controls
  type: long
  inputBinding:
    position: 9
- id: in_zero_x_four_zero_zero
  doc: DUP           .. PCR or optical duplicate
  type: long
  inputBinding:
    position: 10
- id: in_zero_x_eight_zero_zero
  doc: SUPPLEMENTARY .. supplementary alignment
  type: long
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- flags
