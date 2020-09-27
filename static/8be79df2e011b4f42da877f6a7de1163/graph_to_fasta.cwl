class: CommandLineTool
id: graph_to_fasta.cwl
inputs:
- id: in_arg_json_files
  doc: '[ --graph-spec ] arg    JSON file(s) describing the graph'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_output_file
  doc: "[ --output-file ] arg   Output file name. Will output to stdout if '-' or\n\
    neither of output-file or output-folder provided."
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_output_folder
  doc: "[ --output-folder ] arg Output folder path. paragraph will attempt to\ncreate\
    \ the folder but not the entire path. Will\noutput to stdout if neither of output-file\
    \ or\noutput-folder provided. If specified, paragraph\nwill produce one output\
    \ file for each input file\nbearing the same name."
  type: boolean
  inputBinding:
    prefix: -O
- id: in_arg_fasta_reference
  doc: '[ --reference ] arg     FASTA with reference genome'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_log_level
  doc: (=info)    Set log level (error, warning, info).
  type: string
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: Log to a file instead of stderr.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_log_async
  doc: (=1)       Enable / disable async logging.
  type: long
  inputBinding:
    prefix: --log-async
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --output-file ] arg   Output file name. Will output to stdout if '-' or\n\
    neither of output-file or output-folder provided."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_file)
cwlVersion: v1.1
baseCommand:
- graph-to-fasta
