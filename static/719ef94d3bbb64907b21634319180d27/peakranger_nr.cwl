class: CommandLineTool
id: peakranger_nr.cwl
inputs:
- id: in_arg_data_file
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_control_file
  doc: '[ --control ] arg            control file'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_format
  doc: "the format of the data file, can be one of :\nbowtie, sam, bam and bed"
  type: File
  inputBinding:
    prefix: --format
- id: in_arg_read_length
  doc: '[ --ext_length ] arg (=200)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_verbose
  doc: show progress when possible
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- peakranger
- nr
