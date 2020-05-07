class: CommandLineTool
id: IDRipper.cwl
inputs:
- id: in
  doc: "*        Input file, in which the protein/peptide identifications must be\
    \ tagged with 'file_origin' (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "The path to this file is used as the output directory. (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_path
  doc: Directory for the output files after ripping according to 'file_origin'. If
    'out_path' is set, 'out' is ignored.
  type: File
  inputBinding:
    prefix: -out_path
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
- IDRipper
