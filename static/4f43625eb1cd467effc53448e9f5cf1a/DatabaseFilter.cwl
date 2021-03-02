class: CommandLineTool
id: DatabaseFilter.cwl
inputs:
- id: in_in
  doc: "*        Input FASTA file, containing a database. (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_id
  doc: "*        Input file containing identified peptides and proteins. (valid formats:\
    \ 'idXML', 'mzid')"
  type: File?
  inputBinding:
    prefix: -id
- id: in_method
  doc: "Switch between white-/blacklisting (default: 'whitelist' valid: 'whitelist',\
    \ 'blacklist')"
  type: string?
  inputBinding:
    prefix: -method
- id: in_out
  doc: "*       Output FASTA file where the reduced database will be written to. (valid\
    \ formats: 'fasta')"
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
  doc: "*       Output FASTA file where the reduced database will be written to. (valid\
    \ formats: 'fasta')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- DatabaseFilter
