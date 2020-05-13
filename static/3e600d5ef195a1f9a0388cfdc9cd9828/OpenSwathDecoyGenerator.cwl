class: CommandLineTool
id: OpenSwathDecoyGenerator.cwl
inputs:
- id: in
  doc: "*             Input file (valid formats: 'tsv', 'mrm', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*            Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'pqp', 'TraML')"
  type: string
  inputBinding:
    prefix: -out_type
- id: method
  doc: "Decoy generation method ('shuffle','pseudo-reverse','reverse','shift') (default:\
    \ 'shuffle' valid: 'shuffle', 'pseudo-reverse', 'reverse', 'shift')"
  type: string
  inputBinding:
    prefix: -method
- id: decoy_tag
  doc: "Decoy tag (default: 'DECOY_')"
  type: string
  inputBinding:
    prefix: -decoy_tag
- id: switch_kr
  doc: "<true/false>  Whether to switch terminal K and R (to achieve different precursor\
    \ mass) (default: 'true' valid: 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -switchKR
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
- OpenSwathDecoyGenerator
