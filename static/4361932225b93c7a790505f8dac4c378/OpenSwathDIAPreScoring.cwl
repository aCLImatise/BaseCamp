class: CommandLineTool
id: OpenSwathDIAPreScoring.cwl
inputs:
- id: in_tr
  doc: "*                    Transition file (valid formats: 'TraML')"
  type: File?
  inputBinding:
    prefix: -tr
- id: in_out
  doc: "*                   Output file (valid formats: 'tsv')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_swath_files
  doc: "Swath files that were used to extract the transitions. If present, SWATH specific\
    \ scoring will be applied. (valid formats: 'mzML')"
  type: string?
  inputBinding:
    prefix: -swath_files
- id: in_min_upper_edge_dist
  doc: "Minimal distance to the edge to still consider a precursor, in Thomson (only\
    \ in SWATH) (default: '0.0')"
  type: double?
  inputBinding:
    prefix: -min_upper_edge_dist
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
- id: out_out
  doc: "*                   Output file (valid formats: 'tsv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- OpenSwathDIAPreScoring
