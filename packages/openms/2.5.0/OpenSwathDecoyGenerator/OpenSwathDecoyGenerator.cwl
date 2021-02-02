class: CommandLineTool
id: OpenSwathDecoyGenerator.cwl
inputs:
- id: in_in
  doc: "*             Input file (valid formats: 'tsv', 'mrm', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Input file type -- default: determined from file extension or content\n(valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -in_type
- id: in_out
  doc: "*            Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Output file type -- default: determined from file extension or content\n(valid:\
    \ 'tsv', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -out_type
- id: in_method
  doc: "Decoy generation method ('shuffle','pseudo-reverse','reverse','shift') (default:\
    \ 'shuffle' valid: 'shuffle', 'pseudo-reverse', 'reverse', 'shift')"
  type: string
  inputBinding:
    prefix: -method
- id: in_decoy_tag
  doc: "Decoy tag (default: 'DECOY_')"
  type: string
  inputBinding:
    prefix: -decoy_tag
- id: in_switch_kr
  doc: "Whether to switch terminal K and R (to achieve different precursor mass) (default:\
    \ 'true' valid: 'true', 'false')"
  type: string
  inputBinding:
    prefix: -switchKR
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*            Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Output file type -- default: determined from file extension or content\n(valid:\
    \ 'tsv', 'pqp', 'TraML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_type)
cwlVersion: v1.1
baseCommand:
- OpenSwathDecoyGenerator
