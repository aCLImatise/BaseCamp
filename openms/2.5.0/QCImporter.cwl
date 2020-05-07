class: CommandLineTool
id: QCImporter.cwl
inputs:
- id: in
  doc: "Input qcml file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -in
- id: table
  doc: "*     The table containing the additional qp values in the columns. First\
    \ row is considered containing the header. The target run or set names/ids are\
    \ indicated by column \"raw data file\", so each row after the header will contain\
    \ the values of qps for that run. (csv without \"!) (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -table
- id: mapping
  doc: "*   The mapping of the table header to the according qp cvs, also in csv format.\
    \ The first row is considered containing the headers as in the table. The second\
    \ row is considered the according  qp cv accessions. (csv without \"!) (valid\
    \ formats: 'csv')"
  type: File
  inputBinding:
    prefix: -mapping
- id: out
  doc: "*       Output extended qcML file (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -out
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
- QCImporter
