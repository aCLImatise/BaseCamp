class: CommandLineTool
id: ../../../TextExporter.cwl
inputs:
- id: in
  doc: "*                                     Input file  (valid formats: 'featureXML',\
    \ 'consensusXML', 'idXML', 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file (mandatory for featureXML and idXML) (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out
- id: separator
  doc: The used separator character(s); if not set the 'tab' character is used
  type: string
  inputBinding:
    prefix: -separator
- id: replacement
  doc: "Used to replace occurrences of the separator in strings before writing, if\
    \ 'quoting' is 'none' (default: '_')"
  type: string
  inputBinding:
    prefix: -replacement
- id: quoting
  doc: "Method for quoting of strings: 'none' for no quoting, 'double' for quoting\
    \ with doubling of embedded quotes, 'escape' for quoting with backslash-escaping\
    \ of embedded quotes (default: 'none' valid: 'none', 'double', 'escape')"
  type: string
  inputBinding:
    prefix: -quoting
- id: no_ids
  doc: Suppresses output of identification data.
  type: boolean
  inputBinding:
    prefix: -no_ids
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
- TextExporter
