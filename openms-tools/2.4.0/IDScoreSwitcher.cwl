class: CommandLineTool
id: IDScoreSwitcher.cwl
inputs:
- id: in
  doc: "*                       Input file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                      Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: new_score
  doc: '*                Name of the meta value to use as the new score'
  type: string
  inputBinding:
    prefix: -new_score
- id: new_score_orientation
  doc: "*  Orientation of the new score (are higher or lower values better?) (valid:\
    \ 'lower_better', 'higher_better')"
  type: string
  inputBinding:
    prefix: -new_score_orientation
- id: new_score_type
  doc: "Name to use as the type of the new score (default: same as 'new_score')"
  type: string
  inputBinding:
    prefix: -new_score_type
- id: old_score
  doc: 'Name to use for the meta value storing the old score (default: old score type)'
  type: string
  inputBinding:
    prefix: -old_score
- id: proteins
  doc: Apply to protein scores instead of PSM scores
  type: boolean
  inputBinding:
    prefix: -proteins
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
- IDScoreSwitcher
