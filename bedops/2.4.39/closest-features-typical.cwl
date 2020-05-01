#!/usr/bin/env cwl-runner

baseCommand:
- closest-features-typical
class: CommandLineTool
cwlVersion: v1.0
id: closest-features-typical
inputs:
- doc: Jump to and process data for given <chromosome> only.
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: Choose the closest element for output only.  Ties go the left element.
  id: closest
  inputBinding:
    prefix: --closest
  type: boolean
- doc: Change output delimiter from '|' to <delim> between columns (e.g. '\t')
  id: delim
  inputBinding:
    prefix: --delim
  type: string
- doc: Print the signed distances to the <input-file> element as additional columns
    of output.  An overlapping element has a distance of 0.
  id: dist
  inputBinding:
    prefix: --dist
  type: boolean
- doc: Error check all input files (slower).
  id: ec
  inputBinding:
    prefix: --ec
  type: boolean
- doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: Overlapping elements from <query-file> will not be reported.
  id: no_overlaps
  inputBinding:
    prefix: --no-overlaps
  type: boolean
- doc: Do not echo elements from <input-file>.
  id: no_ref
  inputBinding:
    prefix: --no-ref
  type: boolean
