class: CommandLineTool
id: QCExporter.cwl
inputs:
- id: in
  doc: "*        Input qcml file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -in
- id: names
  doc: The name of the target runs or sets to be exported from. If empty, from all
    will be exported.
  type: string
  inputBinding:
    prefix: -names
- id: mapping
  doc: "*   The mapping of the exported table's headers to the according qp cvs. The\
    \ first row is considered containing the headers as for the exported the table.\
    \ The second row is considered the accor ding qp cv accessions of the qp to be\
    \ exported. (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -mapping
- id: out_csv
  doc: "*   Output csv formatted quality parameter. (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_csv
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- QCExporter
