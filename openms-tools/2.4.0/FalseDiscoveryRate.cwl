class: CommandLineTool
id: ../../../FalseDiscoveryRate.cwl
inputs:
- id: in
  doc: "*              Identifications from searching a target-decoy database. (valid\
    \ formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*             Identifications with annotated FDR (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: psm
  doc: "Perform FDR calculation on PSM level (default: 'true' valid: 'true', 'false')"
  type: string
  inputBinding:
    prefix: -PSM
- id: protein
  doc: "Perform FDR calculation on protein level (default: 'true' valid: 'true', 'false')"
  type: string
  inputBinding:
    prefix: -protein
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
- FalseDiscoveryRate
