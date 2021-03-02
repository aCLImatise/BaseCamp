class: CommandLineTool
id: IDSplitter.cwl
inputs:
- id: in_in
  doc: "*        Input file (data annotated with identifications) (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output file (data without identifications). Either 'out' or 'id_out' are required.\
    \ They can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_id_out
  doc: "Output file (identifications). Either 'out' or 'id_out' are required. They\
    \ can be used together. (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -id_out
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file (data without identifications). Either 'out' or 'id_out' are required.\
    \ They can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_id_out
  doc: "Output file (identifications). Either 'out' or 'id_out' are required. They\
    \ can be used together. (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- IDSplitter
