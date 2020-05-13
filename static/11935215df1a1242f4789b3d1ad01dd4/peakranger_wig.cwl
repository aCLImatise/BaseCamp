class: CommandLineTool
id: peakranger_wig.cwl
inputs:
- id: d
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: format
  doc: 'the format of the data file, can be one of :  bowtie, sam, bam and bed'
  type: string
  inputBinding:
    prefix: --format
- id: o
  doc: '[ --output ] arg             the output location'
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: '[ --split ]                  generate one wig file per chromosome'
  type: boolean
  inputBinding:
    prefix: -s
- id: z
  doc: '[ --gzip ]                   compress the output'
  type: boolean
  inputBinding:
    prefix: -z
- id: x
  doc: '[ --strand ]                 generate one wig file per strand'
  type: boolean
  inputBinding:
    prefix: -x
- id: l
  doc: '[ --ext_length ] arg (=200)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- wig
