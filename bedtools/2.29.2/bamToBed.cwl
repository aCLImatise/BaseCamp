#!/usr/bin/env cwl-runner

baseCommand:
- bamToBed
class: CommandLineTool
cwlVersion: v1.0
id: bamtobed
inputs:
- doc: ''
  id: bed_tools
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bam_to_bed
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 2
  type: string
- doc: Use BAM edit distance (NM tag) for BED score. - Default for BED is to use mapping
    quality. - Default for BEDPE is to use the minimum of the two mapping qualities
    for the pair. - When -ed is used with -bedpe, the total edit distance from the
    two mates is reported.
  id: ed
  inputBinding:
    prefix: -ed
  type: boolean
- doc: Use other NUMERIC BAM alignment tag for BED score. - Default for BED is to
    use mapping quality. Disallowed with BEDPE output.
  id: tag
  inputBinding:
    prefix: -tag
  type: boolean
- doc: An R,G,B string for the color used with BED12 format. Default is (255,0,0).
  id: color
  inputBinding:
    prefix: -color
  type: boolean
- doc: Add the CIGAR string to the BED entry as a 7th column.
  id: cigar
  inputBinding:
    prefix: -cigar
  type: boolean
