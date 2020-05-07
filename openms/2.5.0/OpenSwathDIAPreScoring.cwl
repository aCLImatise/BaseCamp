class: CommandLineTool
id: OpenSwathDIAPreScoring.cwl
inputs:
- id: tr
  doc: "*                    Transition file (valid formats: 'TraML')"
  type: File
  inputBinding:
    prefix: -tr
- id: out
  doc: "*                   Output file (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -out
- id: swath_files
  doc: "Swath files that were used to extract the transitions. If present, SWATH specific\
    \ scoring will be applied. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -swath_files
- id: min_upper_edge_dist
  doc: "Minimal distance to the edge to still consider a precursor, in Thomson (only\
    \ in SWATH) (default: '0.0')"
  type: string
  inputBinding:
    prefix: -min_upper_edge_dist
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
- OpenSwathDIAPreScoring
