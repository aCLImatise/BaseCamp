class: CommandLineTool
id: bnMapper.py.cwl
inputs:
- id: input
  doc: Input to process. If more than a file is specified, all files will be mapped
    and placed on --output, which should be a directory.
  type: string
  inputBinding:
    position: 0
- id: alignment
  doc: Alignment file (.chain or .pkl)
  type: string
  inputBinding:
    position: 1
- id: format
  doc: 'Output format. BED4 output reports all aligned blocks as separate BED records.
    BED12 reports a single BED record for each mapped element, with individual blocks
    given in the BED12 fields. NarrowPeak reports a single narrowPeak record for each
    mapped element, in which the chromosome, start, end, and peak positions are mapped
    to the target species and all other columns are passed through unchanged. (default:
    BED4)'
  type: string
  inputBinding:
    prefix: --format
- id: output
  doc: 'Output file. Mandatory if more than on file in input. (default: stdout)'
  type: File
  inputBinding:
    prefix: --output
- id: threshold
  doc: 'Mapping threshold i.e., |elem| * threshold <= |mapped_elem| (default: 0.0)'
  type: double
  inputBinding:
    prefix: --threshold
- id: screen
  doc: 'Only report elements in the alignment (without mapping). -t has not effect
    here (TODO) (default: False)'
  type: boolean
  inputBinding:
    prefix: --screen
- id: gap
  doc: 'Ignore elements with an insertion/deletion of this or bigger size. (default:
    -1)'
  type: string
  inputBinding:
    prefix: --gap
- id: verbose
  doc: 'Verbosity level (default: info)'
  type: string
  inputBinding:
    prefix: --verbose
- id: keep_split
  doc: 'If elements span multiple chains, report the segment with the longest overlap
    instead of silently dropping them. (This is the default behavior for liftOver.)
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_split
- id: in_format
  doc: 'Input file format. (default: BED)'
  type: string
  inputBinding:
    prefix: --in_format
outputs: []
cwlVersion: v1.1
baseCommand:
- bnMapper.py
