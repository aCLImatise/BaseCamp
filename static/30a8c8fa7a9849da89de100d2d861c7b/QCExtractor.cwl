class: CommandLineTool
id: QCExtractor.cwl
inputs:
- id: in_in
  doc: "*        Input qcml file (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_qp
  doc: '*      Target attachment qp.'
  type: string?
  inputBinding:
    prefix: -qp
- id: in_run
  doc: "The file that defined the run under which the qp for the attachment is aggregated\
    \ as mzML file. The file is only used to extract the run name from the file name.\
    \ (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -run
- id: in_name
  doc: If no file for the run was given (or if the target qp is contained in a set),
    at least a name of the target run/set containing the the qp for the attachment
    has to be given.
  type: File?
  inputBinding:
    prefix: -name
- id: in_out_csv
  doc: "*   Output csv formatted table. (valid formats: 'csv')"
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
hints: []
cwlVersion: v1.1
baseCommand:
- QCExtractor
