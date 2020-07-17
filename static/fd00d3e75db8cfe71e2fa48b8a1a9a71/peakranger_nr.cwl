class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/peakranger_nr.cwl
inputs:
- id: arg_data_file
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_control_file
  doc: '[ --control ] arg            control file'
  type: boolean
  inputBinding:
    prefix: -c
- id: format
  doc: 'the format of the data file, can be one of :  bowtie, sam, bam and bed'
  type: string
  inputBinding:
    prefix: --format
- id: arg_read_length
  doc: '[ --ext_length ] arg (=200)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: verbose
  doc: show progress when possible
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- nr
