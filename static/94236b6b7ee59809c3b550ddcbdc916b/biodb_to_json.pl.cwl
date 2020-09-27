class: CommandLineTool
id: biodb_to_json.pl.cwl
inputs:
- id: in_quiet
  doc: "| -q\nQuiet. Don't print progress messages."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_conf
  doc: "Required. Path to the configuration file to read. File must be in\nJSON format."
  type: File
  inputBinding:
    prefix: --conf
- id: in_ref
  doc: "| --refid <ref seq id>\nOptional. Single reference sequence name or id for\
    \ which to process\ndata.\nBy default, processes all data."
  type: string
  inputBinding:
    prefix: --ref
- id: in_out
  doc: 'Directory where output should go. Default: data/'
  type: Directory
  inputBinding:
    prefix: --out
- id: in_compress
  doc: "If passed, compress the output with gzip (requires some web server\nconfiguration\
    \ to serve properly).\n"
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_file
  doc: DESCRIPTION
  type: File
  inputBinding:
    position: 0
- id: in_options
  doc: "--help | -? | -h\nDisplay an extended help screen."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Directory where output should go. Default: data/'
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- biodb-to-json.pl
