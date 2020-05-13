class: CommandLineTool
id: bamToBed.cwl
inputs:
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_to_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ed
  doc: Use BAM edit distance (NM tag) for BED score. - Default for BED is to use mapping
    quality. - Default for BEDPE is to use the minimum of the two mapping qualities
    for the pair. - When -ed is used with -bedpe, the total edit distance from the
    two mates is reported.
  type: boolean
  inputBinding:
    prefix: -ed
- id: tag
  doc: Use other NUMERIC BAM alignment tag for BED score. - Default for BED is to
    use mapping quality. Disallowed with BEDPE output.
  type: boolean
  inputBinding:
    prefix: -tag
- id: color
  doc: An R,G,B string for the color used with BED12 format. Default is (255,0,0).
  type: boolean
  inputBinding:
    prefix: -color
- id: cigar
  doc: Add the CIGAR string to the BED entry as a 7th column.
  type: boolean
  inputBinding:
    prefix: -cigar
outputs: []
cwlVersion: v1.1
baseCommand:
- bamToBed
