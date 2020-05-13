class: CommandLineTool
id: peakranger_wigpe.cwl
inputs:
- id: d
  doc: '[ --data ] arg             the data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: '[ --output ] arg           the output location'
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: '[ --split ]                generate one wig file per chromosome'
  type: boolean
  inputBinding:
    prefix: -s
- id: z
  doc: '[ --gzip ]                 compress the output'
  type: boolean
  inputBinding:
    prefix: -z
- id: x
  doc: '[ --strand ]               generate one wig file per strand'
  type: boolean
  inputBinding:
    prefix: -x
- id: l
  doc: '[ --ext_length ] arg (=0)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: verbose
  doc: show progress when possible
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- wigpe
