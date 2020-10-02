class: CommandLineTool
id: bnMapper.py.cwl
inputs:
- id: in_format
  doc: "Output format. BED4 output reports all aligned blocks\nas separate BED records.\
    \ BED12 reports a single BED\nrecord for each mapped element, with individual\
    \ blocks\ngiven in the BED12 fields. NarrowPeak reports a single\nnarrowPeak record\
    \ for each mapped element, in which\nthe chromosome, start, end, and peak positions\
    \ are\nmapped to the target species and all other columns are\npassed through\
    \ unchanged. (default: BED4)"
  type: string
  inputBinding:
    prefix: --format
- id: in_output
  doc: "Output file. Mandatory if more than on file in input.\n(default: stdout)"
  type: File
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: "Mapping threshold i.e., |elem| * threshold <=\n|mapped_elem| (default: 0.0)"
  type: double
  inputBinding:
    prefix: --threshold
- id: in_screen
  doc: "Only report elements in the alignment (without\nmapping). -t has not effect\
    \ here (TODO) (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --screen
- id: in_gap
  doc: "Ignore elements with an insertion/deletion of this or\nbigger size. (default:\
    \ -1)"
  type: long
  inputBinding:
    prefix: --gap
- id: in_verbose
  doc: 'Verbosity level (default: info)'
  type: string
  inputBinding:
    prefix: --verbose
- id: in_keep_split
  doc: "If elements span multiple chains, report the segment\nwith the longest overlap\
    \ instead of silently dropping\nthem. (This is the default behavior for liftOver.)\n\
    (default: False)"
  type: boolean
  inputBinding:
    prefix: --keep_split
- id: in_in_format
  doc: 'Input file format. (default: BED)'
  type: string
  inputBinding:
    prefix: --in_format
- id: in_input
  doc: "Input to process. If more than a file is specified,\nall files will be mapped\
    \ and placed on --output, which\nshould be a directory."
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: Alignment file (.chain or .pkl)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bnMapper.py
