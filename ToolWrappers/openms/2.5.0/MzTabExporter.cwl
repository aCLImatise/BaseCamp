class: CommandLineTool
id: MzTabExporter.cwl
inputs:
- id: in_in
  doc: "Input files used to generate the mzTab file. (valid formats: 'featureXML',\
    \ 'consensusXML', 'idXML', 'mzid')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*         Output file (mzTab) (valid formats: 'mzTab')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_opt_columns
  doc: "Add optional columns which are not part of the mzTab standard. (default: '[subfeatures]'\
    \ valid: 'subfeatures')"
  type: string?
  inputBinding:
    prefix: -opt_columns
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
  doc: "*         Output file (mzTab) (valid formats: 'mzTab')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- MzTabExporter
