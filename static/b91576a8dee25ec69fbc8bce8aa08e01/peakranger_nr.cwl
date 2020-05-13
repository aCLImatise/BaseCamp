class: CommandLineTool
id: peakranger_nr.cwl
inputs:
- id: d
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: c
  doc: '[ --control ] arg            control file'
  type: boolean
  inputBinding:
    prefix: -c
- id: format
  doc: 'the format of the data file, can be one of :  bowtie, sam, bam and bed'
  type: string
  inputBinding:
    prefix: --format
- id: l
  doc: '[ --ext_length ] arg (=200)  read extension length'
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
- nr
