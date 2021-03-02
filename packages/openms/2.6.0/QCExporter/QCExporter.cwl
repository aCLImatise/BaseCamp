class: CommandLineTool
id: QCExporter.cwl
inputs:
- id: in_in
  doc: "*        Input qcml file (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_names
  doc: The name of the target runs or sets to be exported from. If empty, from all
    will be exported.
  type: string?
  inputBinding:
    prefix: -names
- id: in_mapping
  doc: "*   The mapping of the exported table's headers to the according qp cvs. The\
    \ first row is considered containing the headers as for the exported the table.\
    \ The second row is considered the according qp cv accessions of the qp to be\
    \ exported. (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -mapping
- id: in_out_csv
  doc: "*   Output csv formatted quality parameter. (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out_csv
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- QCExporter
