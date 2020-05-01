#!/usr/bin/env cwl-runner

baseCommand:
- IDScoreSwitcher
class: CommandLineTool
cwlVersion: v1.0
id: idscoreswitcher
inputs:
- doc: "*                       Input file (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                      Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: '*                Name of the meta value to use as the new score'
  id: new_score
  inputBinding:
    prefix: -new_score
  type: string
- doc: "*  Orientation of the new score (are higher or lower values better?) (valid:\
    \ 'lower_better', 'higher_better')"
  id: new_score_orientation
  inputBinding:
    prefix: -new_score_orientation
  type: string
- doc: "Name to use as the type of the new score (default: same as 'new_score')"
  id: new_score_type
  inputBinding:
    prefix: -new_score_type
  type: string
- doc: 'Name to use for the meta value storing the old score (default: old score type)'
  id: old_score
  inputBinding:
    prefix: -old_score
  type: string
- doc: Apply to protein scores instead of PSM scores
  id: proteins
  inputBinding:
    prefix: -proteins
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
