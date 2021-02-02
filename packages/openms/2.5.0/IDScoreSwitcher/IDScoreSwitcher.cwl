class: CommandLineTool
id: IDScoreSwitcher.cwl
inputs:
- id: in_in
  doc: "*                       Input file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                      Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_new_score
  doc: '*                Name of the meta value to use as the new score'
  type: string
  inputBinding:
    prefix: -new_score
- id: in_new_score_orientation
  doc: "*  Orientation of the new score (are higher or lower values better?) (valid:\
    \ 'lower_better', 'higher_better')"
  type: string
  inputBinding:
    prefix: -new_score_orientation
- id: in_new_score_type
  doc: "Name to use as the type of the new score (default: same as 'new_score')"
  type: string
  inputBinding:
    prefix: -new_score_type
- id: in_old_score
  doc: 'Name to use for the meta value storing the old score (default: old score type)'
  type: string
  inputBinding:
    prefix: -old_score
- id: in_proteins
  doc: Apply to protein scores instead of PSM scores
  type: boolean
  inputBinding:
    prefix: -proteins
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
  doc: "*                      Output file (valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- IDScoreSwitcher
