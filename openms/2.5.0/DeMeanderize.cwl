class: CommandLineTool
id: DeMeanderize.cwl
inputs:
- id: in
  doc: "*              Input experiment file, containing the wrongly sorted spectra.\
    \ (valid formats: 'mzML')"
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: "*             Output experiment file with correctly sorted spectra. (valid\
    \ formats: 'mzML')"
  type: string
  inputBinding:
    prefix: -out
- id: num_spots_per_row
  doc: "Number of spots in one column, until next row is spotted. (default: '48' min:\
    \ '1')"
  type: long
  inputBinding:
    prefix: -num_spots_per_row
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
- DeMeanderize
