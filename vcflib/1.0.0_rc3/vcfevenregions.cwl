#!/usr/bin/env cwl-runner

baseCommand:
- vcfevenregions
class: CommandLineTool
cwlVersion: v1.0
id: vcfevenregions
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: FASTA reference file to use to obtain primer sequences.
  id: fast_a_reference
  inputBinding:
    prefix: --fasta-reference
  type: string
- doc: The number of desired regions.
  id: number_of_regions
  inputBinding:
    prefix: --number-of-regions
  type: string
- doc: The number of positions per region.
  id: number_of_positions
  inputBinding:
    prefix: --number-of-positions
  type: string
- doc: Add an offset to region positioning, to avoid boundary related artifacts in
    downstream processing.
  id: offset
  inputBinding:
    prefix: --offset
  type: string
- doc: The number of sites to overlap between regions.  Default 0.
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: Specify string to use to separate region output.  Default '-'
  id: separator
  inputBinding:
    prefix: --separator
  type: string
