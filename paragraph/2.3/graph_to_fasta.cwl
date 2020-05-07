class: CommandLineTool
id: graph_to_fasta.cwl
inputs:
- id: g
  doc: '[ --graph-spec ] arg    JSON file(s) describing the graph'
  type: boolean
  inputBinding:
    prefix: -g
- id: o
  doc: "[ --output-file ] arg   Output file name. Will output to stdout if '-' or\
    \  neither of output-file or output-folder provided."
  type: boolean
  inputBinding:
    prefix: -o
- id: o
  doc: '[ --output-folder ] arg Output folder path. paragraph will attempt to  create
    the folder but not the entire path. Will  output to stdout if neither of output-file
    or  output-folder provided. If specified, paragraph  will produce one output file
    for each input file  bearing the same name.'
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: '[ --reference ] arg     FASTA with reference genome'
  type: boolean
  inputBinding:
    prefix: -r
- id: log_level
  doc: (=info)    Set log level (error, warning, info).
  type: string
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: Log to a file instead of stderr.
  type: string
  inputBinding:
    prefix: --log-file
- id: log_async
  doc: (=1)       Enable / disable async logging.
  type: string
  inputBinding:
    prefix: --log-async
outputs: []
cwlVersion: v1.1
baseCommand:
- graph-to-fasta
