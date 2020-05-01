#!/usr/bin/env cwl-runner

baseCommand:
- bnMapper.py
class: CommandLineTool
cwlVersion: v1.0
id: bnmapper.py
inputs:
- doc: Input to process. If more than a file is specified, all files will be mapped
    and placed on --output, which should be a directory.
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Alignment file (.chain or .pkl)
  id: alignment
  inputBinding:
    position: 1
  type: string
- doc: 'Output format. BED4 output reports all aligned blocks as separate BED records.
    BED12 reports a single BED record for each mapped element, with individual blocks
    given in the BED12 fields. NarrowPeak reports a single narrowPeak record for each
    mapped element, in which the chromosome, start, end, and peak positions are mapped
    to the target species and all other columns are passed through unchanged. (default:
    BED4)'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: 'Output file. Mandatory if more than on file in input. (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: 'Mapping threshold i.e., |elem| * threshold <= |mapped_elem| (default: 0.0)'
  id: threshold
  inputBinding:
    prefix: --threshold
  type: double
- doc: 'Only report elements in the alignment (without mapping). -t has not effect
    here (TODO) (default: False)'
  id: screen
  inputBinding:
    prefix: --screen
  type: boolean
- doc: 'Ignore elements with an insertion/deletion of this or bigger size. (default:
    -1)'
  id: gap
  inputBinding:
    prefix: --gap
  type: string
- doc: 'Verbosity level (default: info)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: 'If elements span multiple chains, report the segment with the longest overlap
    instead of silently dropping them. (This is the default behavior for liftOver.)
    (default: False)'
  id: keep_split
  inputBinding:
    prefix: --keep_split
  type: boolean
- doc: 'Input file format. (default: BED)'
  id: in_format
  inputBinding:
    prefix: --in_format
  type: string
