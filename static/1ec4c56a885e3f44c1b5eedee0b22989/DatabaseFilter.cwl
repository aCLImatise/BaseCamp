class: CommandLineTool
id: DatabaseFilter.cwl
inputs:
- id: in
  doc: "*        Input FASTA file, containing a database. (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: id
  doc: "*        Input file containing identified peptides and proteins. (valid formats:\
    \ 'idXML', 'mzid')"
  type: File
  inputBinding:
    prefix: -id
- id: method
  doc: "Switch between white-/blacklisting (default: 'whitelist' valid: 'whitelist',\
    \ 'blacklist')"
  type: string
  inputBinding:
    prefix: -method
- id: out
  doc: "*       Output FASTA file where the reduced database will be written to. (valid\
    \ formats: 'fasta')"
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
- DatabaseFilter
