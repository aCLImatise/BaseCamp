class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MultiplexResolver.cwl
inputs:
- id: in
  doc: "*            Peptide multiplets with assigned sequence information (valid\
    \ formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*           Complete peptide multiplets. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_conflicts
  doc: "Optional output containing peptide multiplets without ID annotation or with\
    \ conflicting quant/ID information. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_conflicts
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
- MultiplexResolver
