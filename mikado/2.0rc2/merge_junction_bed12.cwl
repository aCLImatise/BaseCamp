class: CommandLineTool
id: merge_junction_bed12.py.cwl
inputs:
- id: bed
  doc: Input BED files. Use "-" for stdin.
  type: string
  inputBinding:
    position: 0
- id: delim
  doc: 'Delimiter for merged names. Default: ;'
  type: string
  inputBinding:
    prefix: --delim
- id: threads
  doc: 'Number of threads to use for multiprocessing. Default: 1'
  type: string
  inputBinding:
    prefix: --threads
- id: top_hat
  doc: Flag. If set, tophat-like junction style is assumed. This means that junctions
    are defined using the blockSizes rather than thickStart/End. The script will convert
    the lines to this latter format. By default, the script assumes that the intron
    start/end are defined using thickStart/End like in portcullis. Mixed-type input
    files are not supported.
  type: boolean
  inputBinding:
    prefix: --tophat
- id: output
  doc: 'Output file. Default: stdout'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_junction_bed12.py
