class: CommandLineTool
id: ../../../peakranger_wigpe.cwl
inputs:
- id: arg_data_file
  doc: '[ --data ] arg             the data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_output_location
  doc: '[ --output ] arg           the output location'
  type: boolean
  inputBinding:
    prefix: -o
- id: generate_one_wig_file_chromosome
  doc: '[ --split ]                generate one wig file per chromosome'
  type: boolean
  inputBinding:
    prefix: -s
- id: _compress_output
  doc: '[ --gzip ]                 compress the output'
  type: boolean
  inputBinding:
    prefix: -z
- id: generate_one_wig_file_strand
  doc: '[ --strand ]               generate one wig file per strand'
  type: boolean
  inputBinding:
    prefix: -x
- id: arg_read_length
  doc: '[ --ext_length ] arg (=0)  read extension length'
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
- wigpe
