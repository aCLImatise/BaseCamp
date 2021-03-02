class: CommandLineTool
id: FalseDiscoveryRate.cwl
inputs:
- id: in_in
  doc: "*              Identifications from searching a target-decoy database. (valid\
    \ formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*             Identifications with annotated FDR (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_psm
  doc: "Perform FDR calculation on PSM level (default: 'true' valid: 'true', 'false')"
  type: string?
  inputBinding:
    prefix: -PSM
- id: in_protein
  doc: "Perform FDR calculation on protein level (default: 'true' valid: 'true', 'false')"
  type: string?
  inputBinding:
    prefix: -protein
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
- FalseDiscoveryRate
