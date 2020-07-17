class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_flags.cwl
inputs:
- id: zero_x_one
  doc: PAIRED        .. paired-end (or multiple-segment) sequencing technology
  type: string
  inputBinding:
    position: 0
- id: zero_x_two
  doc: PROPER_PAIR   .. each segment properly aligned according to the aligner
  type: string
  inputBinding:
    position: 1
- id: zero_x_four
  doc: UNMAP         .. segment unmapped
  type: string
  inputBinding:
    position: 2
- id: zero_x_eight
  doc: MUNMAP        .. next segment in the template unmapped
  type: string
  inputBinding:
    position: 3
- id: zero_x_one_zero
  doc: REVERSE       .. SEQ is reverse complemented
  type: string
  inputBinding:
    position: 4
- id: zero_x_two_zero
  doc: MREVERSE      .. SEQ of the next segment in the template is reversed
  type: string
  inputBinding:
    position: 5
- id: zero_x_four_zero
  doc: READ1         .. the first segment in the template
  type: string
  inputBinding:
    position: 6
- id: zero_x_eight_zero
  doc: READ2         .. the last segment in the template
  type: string
  inputBinding:
    position: 7
- id: zero_x_one_zero_zero
  doc: SECONDARY     .. secondary alignment
  type: string
  inputBinding:
    position: 8
- id: zero_x_two_zero_zero
  doc: QCFAIL        .. not passing quality controls
  type: string
  inputBinding:
    position: 9
- id: zero_x_four_zero_zero
  doc: DUP           .. PCR or optical duplicate
  type: string
  inputBinding:
    position: 10
- id: zero_x_eight_zero_zero
  doc: SUPPLEMENTARY .. supplementary alignment
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- flags
