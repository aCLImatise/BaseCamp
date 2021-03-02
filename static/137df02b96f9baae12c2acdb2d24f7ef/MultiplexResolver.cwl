class: CommandLineTool
id: MultiplexResolver.cwl
inputs:
- id: in_in
  doc: "*            Peptide multiplets with assigned sequence information (valid\
    \ formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*           Complete peptide multiplets. (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_conflicts
  doc: "Optional output containing peptide multiplets without ID annotation or with\
    \ conflicting quant/ID information. (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out_conflicts
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
- MultiplexResolver
