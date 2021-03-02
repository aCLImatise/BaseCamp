class: CommandLineTool
id: TextExporter.cwl
inputs:
- id: in_in
  doc: "*                                     Input file  (valid formats: 'featureXML',\
    \ 'consensusXML', 'idXML', 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                                    Output file. (valid formats: 'tsv')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_separator
  doc: The used separator character(s); if not set the 'tab' character is used
  type: string?
  inputBinding:
    prefix: -separator
- id: in_replacement
  doc: "Used to replace occurrences of the separator in strings before writing, if\
    \ 'quoting' is 'none' (default: '_')"
  type: string?
  inputBinding:
    prefix: -replacement
- id: in_quoting
  doc: "Method for quoting of strings: 'none' for no quoting, 'double' for quoting\
    \ with doubling of embedded quotes,\n'escape' for quoting with backslash-escaping\
    \ of embedded quotes (default: 'none' valid: 'none', 'double', 'escape')"
  type: string?
  inputBinding:
    prefix: -quoting
- id: in_no_ids
  doc: Suppresses output of identification data.
  type: boolean?
  inputBinding:
    prefix: -no_ids
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
  doc: "*                                    Output file. (valid formats: 'tsv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- TextExporter
