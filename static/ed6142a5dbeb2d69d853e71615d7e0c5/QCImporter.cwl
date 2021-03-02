class: CommandLineTool
id: QCImporter.cwl
inputs:
- id: in_in
  doc: "Input qcml file (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_table
  doc: "*     The table containing the additional qp values in the columns. First\
    \ row is considered containing the header. The target run or set names/ids are\
    \ indicated by column \"raw data file\", so each row after the header will contain\
    \ the values of qps for that run. (csv without \"!) (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -table
- id: in_mapping
  doc: "*   The mapping of the table header to the according qp cvs, also in csv format.\
    \ The first row is considered containing the headers as in the table. The second\
    \ row is considered the according qp cv accessions. (csv without \"!) (valid formats:\
    \ 'csv')"
  type: File?
  inputBinding:
    prefix: -mapping
- id: in_out
  doc: "*       Output extended qcML file (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -out
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
  doc: "*       Output extended qcML file (valid formats: 'qcML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- QCImporter
