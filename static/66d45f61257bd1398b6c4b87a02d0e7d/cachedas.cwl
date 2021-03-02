class: CommandLineTool
id: cachedas.cwl
inputs:
- id: in_sequence_sources_only
  doc: '[N] Display DAS sequence sources only'
  type: boolean?
  inputBinding:
    prefix: -sequencesourcesonly
- id: in_outfile
  doc: outfile    [stdout] Output file name
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_host
  doc: "string     [www.dasregistry.org] DAS registry/server\nhost location (Any string)"
  type: boolean?
  inputBinding:
    prefix: -host
- id: in_path
  doc: "string     [/das] DAS registry/server path on\nregistry/server host (Any string)"
  type: boolean?
  inputBinding:
    prefix: -path
- id: in_port
  doc: "integer    [80] DAS registry/server port on\nregistry/server host (Any integer\
    \ value)"
  type: boolean?
  inputBinding:
    prefix: -port
- id: in_servername
  doc: "string     [das] Name of a DAS server defined in EMBOSS\nresource files (Any\
    \ string)"
  type: boolean?
  inputBinding:
    prefix: -servername
- id: in_file
  doc: 'Additional (Optional) qualifiers:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [stdout] Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- cachedas
