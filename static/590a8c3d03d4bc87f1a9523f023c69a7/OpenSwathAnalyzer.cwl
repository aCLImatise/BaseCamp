class: CommandLineTool
id: OpenSwathAnalyzer.cwl
inputs:
- id: in
  doc: "*                    Input file containing the chromatograms. (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: tr
  doc: "*                    Transition file (valid formats: 'TraML')"
  type: File
  inputBinding:
    prefix: -tr
- id: rt_norm
  doc: "RT normalization file (how to map the RTs of this run to the ones stored in\
    \ the library) (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -rt_norm
- id: out
  doc: "*                   Output file (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: no_strict
  doc: Run in non-strict mode and allow some chromatograms to not be mapped.
  type: boolean
  inputBinding:
    prefix: -no-strict
- id: swath_files
  doc: "[applies only if you have full MS2 spectra maps] Swath files that were used\
    \ to extract the transitions. If present, SWATH specific scoring will be used.\
    \ (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -swath_files
- id: min_upper_edge_dist
  doc: "[applies only if you have full MS2 spectra maps] Minimal distance to the edge\
    \ to still consider a precursor, in Thomson (only in SWATH) (default: '0')"
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
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- OpenSwathAnalyzer
